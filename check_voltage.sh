#!/bin/bash
# ==============================================
#  Cek Tegangan dan Status Charger di Arch Linux
#  Kompatibel dengan MacBook Pro 2012 (Intel)
# ==============================================

AC_PATH=$(ls /sys/class/power_supply/ | grep -E 'AC|ADP|MAGS' | head -n1)
BAT_PATH=$(ls /sys/class/power_supply/ | grep -i BAT | head -n1)
LOGFILE="$HOME/charger_log.txt"

echo "==============================" | tee -a "$LOGFILE"
echo "📅 $(date)" | tee -a "$LOGFILE"

if [[ -n "$AC_PATH" ]]; then
    echo "⚡ Adapter ditemukan: $AC_PATH" | tee -a "$LOGFILE"
    # Tegangan (dalam µV → dibagi 1.000.000 untuk Volt)
    if [[ -f /sys/class/power_supply/$AC_PATH/voltage_now ]]; then
        V=$(echo "$(cat /sys/class/power_supply/$AC_PATH/voltage_now) / 1000000" | bc -l)
        echo "🔌 Tegangan adaptor: ${V} V" | tee -a "$LOGFILE"
    fi
    # Arus (µA → dibagi 1.000.000 untuk Ampere)
    if [[ -f /sys/class/power_supply/$AC_PATH/current_now ]]; then
        A=$(echo "$(cat /sys/class/power_supply/$AC_PATH/current_now) / 1000000" | bc -l)
        echo "🔋 Arus adaptor: ${A} A" | tee -a "$LOGFILE"
    fi
    # Status online
    echo "💡 Status adaptor: $(cat /sys/class/power_supply/$AC_PATH/online)" | tee -a "$LOGFILE"
else
    echo "❌ Tidak ada adaptor terdeteksi." | tee -a "$LOGFILE"
fi

if [[ -n "$BAT_PATH" ]]; then
    echo "🔋 Baterai: $BAT_PATH" | tee -a "$LOGFILE"
    echo "   Status: $(cat /sys/class/power_supply/$BAT_PATH/status)" | tee -a "$LOGFILE"
    echo "   Kapasitas: $(cat /sys/class/power_supply/$BAT_PATH/capacity)%" | tee -a "$LOGFILE"

    # Jika baterai menyediakan info tegangan
    if [[ -f /sys/class/power_supply/$BAT_PATH/voltage_now ]]; then
        VBAT=$(echo "$(cat /sys/class/power_supply/$BAT_PATH/voltage_now) / 1000000" | bc -l)
        echo "   Tegangan baterai: ${VBAT} V" | tee -a "$LOGFILE"
    fi
fi

echo "==============================" | tee -a "$LOGFILE"
