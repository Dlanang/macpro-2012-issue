#!/bin/bash
# Simple battery and charger status for Arch Linux on MacBook

BAT_PATH="/sys/class/power_supply/BAT0"
AC_PATH="/sys/class/power_supply/ADP1"

# Cek keberadaan file
if [[ ! -d "$BAT_PATH" ]]; then
  echo "❌ Battery device not found."
  exit 1
fi
if [[ ! -d "$AC_PATH" ]]; then
  echo "❌ AC adapter not found."
  exit 1
fi

# Ambil nilai
BAT_STATUS=$(cat "$BAT_PATH/status" 2>/dev/null)
BAT_CAPACITY=$(cat "$BAT_PATH/capacity" 2>/dev/null)
AC_ONLINE=$(cat "$AC_PATH/online" 2>/dev/null)

# Tentukan ikon & status
if [[ "$AC_ONLINE" == "1" && "$BAT_STATUS" == "Charging" ]]; then
  ICON="⚡"
  MSG="Charging ($BAT_CAPACITY%)"
elif [[ "$AC_ONLINE" == "1" && "$BAT_STATUS" == "Full" ]]; then
  ICON="✅"
  MSG="Full ($BAT_CAPACITY%)"
elif [[ "$AC_ONLINE" == "0" && "$BAT_STATUS" == "Discharging" ]]; then
  ICON="🔋"
  MSG="On Battery ($BAT_CAPACITY%)"
else
  ICON="❔"
  MSG="$BAT_STATUS ($BAT_CAPACITY%)"
fi

echo "$ICON  Adapter: $( [[ $AC_ONLINE == 1 ]] && echo Connected || echo Disconnected )"
echo "🔋  Battery: $MSG"
