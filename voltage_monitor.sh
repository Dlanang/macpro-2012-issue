#!/bin/bash
# ==============================================
#  Cek Tegangan & Status Charger - versi ringkas
# ==============================================

AC_PATH=$(ls /sys/class/power_supply/ | grep -E 'AC|ADP|MAGS' | head -n1)
BAT_PATH=$(ls /sys/class/power_supply/ | grep -i BAT | head -n1)
LOGFILE="$HOME/charger_log.txt"

echo "==============================" | tee -a "$LOGFILE"
echo "📅 $(date)" | tee -a "$LOGFILE"

if [[ -n "$AC_PATH" ]]; then
    echo "⚡ Adapter ditemukan: $AC_PATH" | tee -a "$LOGFILE"
    if [[ -f /sys/class/power_supply/$AC_PATH/online ]]; then
        echo "💡 Status adaptor: $(cat /sys/class/power_supply/$AC_PATH/online)" | tee -a "$LOGFILE"
    fi
else
    echo "❌ Tidak ada adaptor terdeteksi." | tee -a "$LOGFILE"
fi

if [[ -n "$BAT_PATH" ]]; then
    echo "🔋 Baterai: $BAT_PATH" | tee -a "$LOGFILE"
    echo "   Status: $(cat /sys/class/power_supply/$BAT_PATH/status)" | tee -a "$LOGFILE"
    echo "   Kapasitas: $(cat /sys/class/power_supply/$BAT_PATH/capacity)%" | tee -a "$LOGFILE"

    if [[ -f /sys/class/power_supply/$BAT_PATH/voltage_now ]]; then
        RAW=$(cat /sys/class/power_supply/$BAT_PATH/voltage_now)
        VBAT=$(echo "scale=3; $RAW/1000000" | bc)
        echo "   Tegangan baterai: ${VBAT} V" | tee -a "$LOGFILE"
    fi
fi

echo "==============================" | tee -a "$LOGFILE"
