import os
import subprocess
import sys

# ─────────────────────────────────────────────
# TOOL CONFIGURATION
# ─────────────────────────────────────────────
SDCC        = "sdcc"
FLASH_TOOL  = "chprog"           # Already on PATH

PROJECT_ROOT = r"C:\Users\Clovisf\Documents\ch552"
INC_DIR      = os.path.join(PROJECT_ROOT, "inc")

# SDCC flags shared across all compilation/linking steps
SDCC_FLAGS = [
    "-mmcs51",
    "--iram-size", "256",
    "--xram-size", "0",
    "--code-size", "14336",
    "--stack-auto",
    "-I.", f"-I{INC_DIR}",
]

# ─────────────────────────────────────────────
# HELPERS
# ─────────────────────────────────────────────

def find_companion_sources(main_file: str) -> list[str]:
    """
    Scan every subdirectory of PROJECT_ROOT for .c files that have a
    matching .h file referenced (directly or transitively).
    
    Simple heuristic: any subfolder that contains BOTH a .c and a .h
    with the same stem is treated as a 'companion library' and its .c
    files are auto-included — EXCEPT the folder of main_file itself
    and the /inc folder (which is header-only).
    """
    main_dir   = os.path.dirname(os.path.abspath(main_file))
    companions = []

    for dirpath, dirnames, filenames in os.walk(PROJECT_ROOT):
        abs_dir = os.path.abspath(dirpath)

        # Skip the project root itself, the inc folder, and main's own folder
        if abs_dir in (os.path.abspath(PROJECT_ROOT),
                       os.path.abspath(INC_DIR),
                       main_dir):
            continue

        c_files = [f for f in filenames if f.endswith(".c")]
        h_files = {os.path.splitext(f)[0] for f in filenames if f.endswith(".h")}

        for c in c_files:
            stem = os.path.splitext(c)[0]
            if stem in h_files:          # paired .c/.h → companion library
                companions.append(os.path.join(dirpath, c))

    return companions


def compile_file(src: str, extra_includes: list[str] = []) -> str:
    """Compile a single .c file to .rel in the current working directory."""
    print(f"  Compiling  {src}")
    # Output .rel goes to cwd, named after the source file's basename
    rel_out = os.path.basename(src).replace(".c", ".rel")
    cmd = [SDCC] + SDCC_FLAGS + [f"-I{d}" for d in extra_includes] + ["-c", src, "-o", rel_out]
    if subprocess.run(cmd).returncode != 0:
        print(f"  ERROR: compilation failed for {src}")
        sys.exit(1)
    return rel_out  # relative path, always in cwd


# ─────────────────────────────────────────────
# MAIN
# ─────────────────────────────────────────────

def main():
    if len(sys.argv) < 2:
        print("Usage: python build_flash.py <main_file.c>")
        sys.exit(1)

    main_file = sys.argv[1]
    if not os.path.exists(main_file):
        print(f"Error: '{main_file}' not found.")
        sys.exit(1)

    # ── Discover companion libraries ──────────────────────────────────
    companions = find_companion_sources(main_file)

    print("=" * 54)
    print(f"  Main file : {main_file}")
    if companions:
        print(f"  Libraries : {len(companions)} companion source(s) found")
        for c in companions:
            print(f"              {c}")
    else:
        print("  Libraries : none detected")
    print("=" * 54)

    # ── Compile ───────────────────────────────────────────────────────
    print("\n>> Compiling...")
    rel_files = []

    rel_files.append(compile_file(main_file))

    for src in companions:
        lib_inc = os.path.dirname(src)   # expose the companion's own folder as -I
        rel_files.append(compile_file(src, extra_includes=[lib_inc]))

    # ── Link ──────────────────────────────────────────────────────────
    print("\n>> Linking...")
    link_cmd = [SDCC] + SDCC_FLAGS + rel_files
    print("  " + " ".join(link_cmd))
    if subprocess.run(link_cmd).returncode != 0:
        print("  ERROR: linking failed.")
        sys.exit(1)

    # ── Convert .ihx → .bin ──────────────────────────────────────────
    ihx_file = main_file.replace(".c", ".ihx")
    bin_file  = main_file.replace(".c", ".bin")

    print(f"\n>> Converting {ihx_file} → {bin_file}")
    objcopy_cmd = ["objcopy", "-I", "ihex", "-O", "binary", ihx_file, bin_file]
    if subprocess.run(objcopy_cmd).returncode != 0:
        # Fallback: try packihx (comes with SDCC)
        print("  objcopy not found, trying packihx...")
        with open(bin_file, "wb") as f:
            result = subprocess.run(["packihx", ihx_file], stdout=subprocess.PIPE)
            f.write(result.stdout)
        if result.returncode != 0:
            print("  ERROR: .ihx → .bin conversion failed.")
            sys.exit(1)

    # ── Flash ─────────────────────────────────────────────────────────
    print(f"\n>> Ready to flash: {bin_file}")
    print(">> Put the CH552 into BOOT mode (hold BOOT, plug USB, release).")
    input(">> Press ENTER when ready...\n")

    flash_cmd = [FLASH_TOOL, bin_file]
    print("  " + " ".join(flash_cmd))
    if subprocess.run(flash_cmd, text=True).returncode != 0:
        print("  ERROR: flashing failed.")
        sys.exit(1)

    print("\n✔  Build + Flash completed successfully!")


if __name__ == "__main__":
    main()