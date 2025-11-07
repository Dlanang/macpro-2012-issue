#!/usr/bin/env bash
# -----------------------------------------------------
# Battery and Charger Status Checker for Arch Linux
# Tested on MacBook Pro 2012 (Intel)
# -----------------------------------------------------

AC_PATH=$(find /sys/class/power_supply/ -maxdepth 1 -type d -name "AC*" -o -name "ADP*" | head -n 1)
BAT_PATH=$(find /sys/class/power_supply/ -maxdepth 1 -type d -name "BAT*" | head -n 1)

# Adapter check
if [[ -n "$AC_PATH" && -f "$AC_PATH/online" ]]; then
  AC_STATUS=$(cat "$AC_PATH/online")
  if [[ "$AC_STATUS" -eq 1 ]]; then
    ADAPTER="✅  Adapter: Connected"
  else
    ADAPTER="❌  Adapter: Disconnected"
  fi
else
  ADAPTER="⚠️  Adapter: Not Detected"
fi

# Battery check
if [[ -n "$BAT_PATH" ]]; then
  STATUS=$(cat "$BAT_PATH/status" 2>/dev/null)
  CAPACITY=$(cat "$BAT_PATH/capacity" 2>/dev/null)
  VOLTAGE=$(awk '{printf "%.2f", $1/1000000}' "$BAT_PATH/voltage_now" 2>/dev/null)
  CURRENT=$(awk '{printf "%.2f", $1/1000000}' "$BAT_PATH/current_now" 2>/dev/null)

  BATTERY="🔋  Battery: $STATUS (${CAPACITY:-?}%)"
  POWER="⚡  Voltage: ${VOLTAGE:-?} V | Current: ${CURRENT:-?} A"
else
  BATTERY="⚠️  Battery: Not Found"
  POWER=""
fi

echo -e "$ADAPTER\n$BATTERY\n$POWER"
