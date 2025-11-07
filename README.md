# MacBook Pro 2012 Battery Monitoring System

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Shell](https://img.shields.io/badge/shell-bash-green.svg)
![Platform](https://img.shields.io/badge/platform-Linux-orange.svg)

Sistem monitoring baterai untuk MacBook Pro 2012 yang berjalan di Arch Linux. Tool ini membantu memantau kesehatan baterai, tegangan, dan mengidentifikasi potensi kerusakan pada sistem power management.

## 📋 Daftar Isi

- [Fitur](#-fitur)
- [Prasyarat](#-prasyarat)
- [Instalasi](#-instalasi)
- [Penggunaan](#-penggunaan)
- [Deskripsi Script](#-deskripsi-script)
- [Identifikasi Kerusakan](#-identifikasi-kerusakan)
- [Log File](#-log-file)
- [Troubleshooting](#-troubleshooting)
- [Kontribusi](#-kontribusi)
- [Lisensi](#-lisensi)

## ✨ Fitur

- ✅ Monitoring status baterai real-time (kapasitas, status charging/discharging)
- ⚡ Pengecekan status adapter/charger
- 🔌 Monitoring tegangan baterai dan adapter
- 📊 Logging otomatis dengan timestamp
- 🔍 Deteksi potensi kerusakan pada sistem power
- 💡 Interface dengan emoji untuk kemudahan pembacaan

## 🔧 Prasyarat

- **OS**: Arch Linux (atau distro Linux lain dengan sysfs support)
- **Hardware**: MacBook Pro 2012 (Intel)
- **Dependencies**:
  - `bash` (v4.0 atau lebih baru)
  - `bc` (untuk kalkulasi floating point)

### Instalasi Dependencies

```bash
# Arch Linux
sudo pacman -S bc

# Ubuntu/Debian
sudo apt install bc

# Fedora
sudo dnf install bc
```

## 📥 Instalasi

1. Clone repository ini:

```bash
git clone https://github.com/Dlanang/macpro-2012-issue.git
cd macpro-2012-issue
```

2. Berikan permission eksekusi pada semua script:

```bash
chmod +x *.sh
```

## 🚀 Penggunaan

### 1. Battery Status (Simple)

Script untuk cek status baterai secara cepat:

```bash
./battery-status.sh
```

**Output contoh:**
```
⚡  Adapter: Connected
🔋  Battery: Charging (85%)
```

### 2. Check Power (Quick Check)

Pengecekan cepat status power:

```bash
./check_power.sh
```

**Output contoh:**
```
⚙️ Checking power status...
Adapter status: 1
Battery capacity: 85%
Battery status: Charging
```

### 3. Voltage Monitor (Detailed)

Monitoring tegangan lengkap dengan logging:

```bash
./voltage_monitor.sh
```

**Output contoh:**
```
==============================
📅 Thu Nov  7 10:30:45 WIB 2025
⚡ Adapter ditemukan: ADP1
💡 Status adaptor: 1
🔋 Baterai: BAT0
   Status: Charging
   Kapasitas: 85%
   Tegangan baterai: 12.456 V
==============================
```

### 4. Check Voltage (Full Diagnostics)

Pengecekan menyeluruh tegangan dan arus:

```bash
./check_voltage.sh
```

**Output contoh:**
```
==============================
📅 Thu Nov  7 10:30:45 WIB 2025
⚡ Adapter ditemukan: ADP1
🔌 Tegangan adaptor: 16.500 V
🔋 Arus adaptor: 3.250 A
💡 Status adaptor: 1
🔋 Baterai: BAT0
   Status: Charging
   Kapasitas: 85%
   Tegangan baterai: 12.456 V
==============================
```

## 📝 Deskripsi Script

### `battery-status.sh`

Script sederhana untuk monitoring status baterai dengan tampilan user-friendly.

**Fitur:**
- Deteksi status adapter (connected/disconnected)
- Status baterai (Charging/Full/Discharging)
- Persentase kapasitas baterai
- Icon visual untuk status yang berbeda

### `check_power.sh`

Script minimalis untuk quick check status power sistem.

**Fitur:**
- Status adapter online/offline
- Kapasitas baterai
- Status charging baterai

### `voltage_monitor.sh`

Script monitoring dengan logging untuk tracking jangka panjang.

**Fitur:**
- Timestamp setiap pengecekan
- Status adapter dan baterai
- Monitoring tegangan baterai
- Logging otomatis ke `~/charger_log.txt`

### `check_voltage.sh`

Script diagnostik lengkap untuk analisis detail sistem power.

**Fitur:**
- Auto-detect device adapter dan baterai
- Monitoring tegangan adapter (Volt)
- Monitoring arus adapter (Ampere)
- Monitoring tegangan baterai
- Logging lengkap dengan timestamp

## 🔍 Identifikasi Kerusakan

### Indikator Baterai Bermasalah

1. **Kapasitas Menurun Drastis**
   - Kapasitas < 50% padahal baterai baru
   - Penurunan kapasitas > 20% dalam waktu singkat
   
   ```bash
   # Jalankan secara berkala untuk tracking
   ./battery-status.sh
   ```

2. **Tegangan Tidak Normal**
   - Tegangan baterai < 10V saat terisi penuh
   - Tegangan drop drastis saat discharging
   
   ```bash
   ./check_voltage.sh
   ```

3. **Charging Tidak Konsisten**
   - Status berubah-ubah antara Charging/Discharging
   - Adapter terdeteksi tapi tidak charging
   
   ```bash
   # Monitor perubahan status
   watch -n 5 ./battery-status.sh
   ```

4. **Adapter Bermasalah**
   - Tegangan adapter < 16V (seharusnya ~16.5V untuk MacBook Pro)
   - Arus terlalu rendah saat charging
   
   ```bash
   ./check_voltage.sh
   ```

### Tanda-tanda Kerusakan Hardware

| Gejala | Kemungkinan Penyebab | Solusi |
|--------|---------------------|---------|
| Kapasitas < 80% (baterai < 2 tahun) | Baterai rusak/degradasi | Ganti baterai |
| Tegangan adapter < 15V | Charger rusak | Ganti charger |
| Status berubah saat adapter tertancap | Konektor MagSafe rusak | Bersihkan/ganti konektor |
| Baterai tidak terdeteksi | SMC error atau baterai mati | Reset SMC atau ganti baterai |
| Tegangan baterai fluktuatif | Battery controller rusak | Ganti baterai |

## 📊 Log File

Semua script dengan logging akan menyimpan data ke:

```
~/charger_log.txt
```

### Melihat Log

```bash
# Lihat seluruh log
cat ~/charger_log.txt

# Lihat 20 baris terakhir
tail -n 20 ~/charger_log.txt

# Lihat log hari ini
grep "$(date +%Y-%m-%d)" ~/charger_log.txt
```

### Membersihkan Log

```bash
# Hapus log lama
> ~/charger_log.txt

# Atau backup dulu
mv ~/charger_log.txt ~/charger_log_backup_$(date +%Y%m%d).txt
```

## 🔧 Troubleshooting

### Error: Battery device not found

**Penyebab:** Device baterai tidak terdeteksi di sysfs

**Solusi:**
```bash
# Cek apakah device ada
ls /sys/class/power_supply/

# Jika tidak ada BAT*, coba:
sudo modprobe battery
```

### Error: bc: command not found

**Penyebab:** Package `bc` belum terinstall

**Solusi:**
```bash
# Arch Linux
sudo pacman -S bc
```

### Tegangan Tidak Muncul

**Penyebab:** File `voltage_now` tidak tersedia di sysfs

**Solusi:**
- Beberapa kernel/driver tidak expose voltage info
- Gunakan tool alternatif seperti `upower` atau `acpi`

```bash
# Cek dengan upower
upower -i /org/freedesktop/UPower/devices/battery_BAT0
```

### Permission Denied

**Penyebab:** Script tidak executable

**Solusi:**
```bash
chmod +x *.sh
```

## 🤝 Kontribusi

Kontribusi sangat diterima! Silakan:

1. Fork repository ini
2. Buat branch fitur baru (`git checkout -b feature/AmazingFeature`)
3. Commit perubahan (`git commit -m 'feat: add some AmazingFeature'`)
4. Push ke branch (`git push origin feature/AmazingFeature`)
5. Buat Pull Request

### Konvensi Commit

Gunakan [Conventional Commits](https://www.conventionalcommits.org/):

- `feat:` - Fitur baru
- `fix:` - Bug fix
- `docs:` - Perubahan dokumentasi
- `refactor:` - Refactoring code
- `test:` - Menambah test
- `chore:` - Update dependencies, dll

## 📄 Lisensi

Project ini menggunakan MIT License - lihat file [LICENSE](LICENSE) untuk detail.

## 👤 Author

**Dlanang**
- GitHub: [@Dlanang](https://github.com/Dlanang)

## 🙏 Acknowledgments

- Komunitas Arch Linux
- Apple MacBook Pro 2012 users community
- Linux kernel sysfs documentation

---

**⚠️ Disclaimer:** Tool ini dibuat untuk monitoring dan diagnostik. Penulis tidak bertanggung jawab atas kerusakan hardware yang mungkin terjadi. Selalu backup data penting Anda.
