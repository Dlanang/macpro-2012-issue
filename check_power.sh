#!/bin/bash
AC_PATH=$(ls /sys/class/power_supply/ | grep -E 'AC|ADP|MAGS' | head -n1)
BAT_PATH=$(ls /sys/class/power_supply/ | grep -i BAT | head -n1)

echo "⚙️ Checking power status..."
if [[ -n "$AC_PATH" ]]; then
    echo "Adapter status: $(cat /sys/class/power_supply/$AC_PATH/online)"
else
    echo "No adapter detected."
fi

if [[ -n "$BAT_PATH" ]]; then
    echo "Battery capacity: $(cat /sys/class/power_supply/$BAT_PATH/capacity)%"
    echo "Battery status: $(cat /sys/class/power_supply/$BAT_PATH/status)"
else
    echo "No battery detected."
fi
