import math

# ========== CHANGE THESE ==========
B    = 3950      # beta value from your thermistor datasheet
R0   = 10000     # nominal resistance at T0 (ohms)
T0   = 298.15    # T0 in Kelvin (25°C)
Rser = 9820     # your series resistor (ohms)
Vcc  = 5       # supply voltage
ADC_MAX = 255    # 8-bit ADC
# ==================================

T_START = -5.0   # range start (°C)
T_END   = 45.0   # range end (°C)
STEP    = 0.5    # resolution (°C)

steps = int((T_END - T_START) / STEP) + 1  # = 101 entries

print(f"// NTC lookup: {steps} entries, {T_START}°C to {T_END}°C, step {STEP}°C")
print(f"// Index 0 = {T_START}°C, each step = {STEP}°C")
print(f"// ADC value decreases as temperature increases (NTC behaviour)")
print(f"#define NTC_T_START_X2  {int(T_START * 2)}  // T_START * 2 to avoid floats")
print(f"#define NTC_STEP_X2     1                   // 0.5°C step * 2 = 1")
print(f"#define NTC_ENTRIES     {steps}")
print()
print("__code const uint8_t ntc_adc_table[] = {")

vals = []
for i in range(steps):
    T_c = T_START + i * STEP
    T_k = T_c + 273.15
    # Steinhart-Hart beta equation: R = R0 * exp(B*(1/T - 1/T0))
    R = R0 * math.exp(B * (1.0/T_k - 1.0/T0))
    # Voltage divider: Vout = Vcc * R / (R + Rser)  [NTC on top, Rser to GND]
    # Swap to: Vout = Vcc * Rser / (Rser + R)       [Rser on top, NTC to GND]
    #Vout = Vcc * Rser / (Rser + R)
    Vout = Vcc * R / (R + Rser)
    adc = int(round(Vout / Vcc * ADC_MAX))
    adc = max(0, min(255, adc))
    vals.append(adc)

print(", ".join(str(v) for v in vals))
print("};")