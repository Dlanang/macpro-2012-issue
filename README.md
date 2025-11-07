# MacBook Pro 2012 - Issue & Repair Guide

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Platform](https://img.shields.io/badge/platform-macOS%20%7C%20Linux-orange.svg)
![Hardware](https://img.shields.io/badge/hardware-MacBook%20Pro%202012-lightgrey.svg)

Repository dokumentasi lengkap untuk troubleshooting, repair guide, dan monitoring tools untuk MacBook Pro 2012 (Mid 2012, 13" & 15"). Mencakup berbagai issue umum, replacement parts guide, dan tools untuk diagnostik.

## 📋 Daftar Isi

- [Tentang Repository Ini](#-tentang-repository-ini)
- [Common Issues](#-common-issues)
- [Replacement Parts Guide](#-replacement-parts-guide)
- [Monitoring Tools](#-monitoring-tools)
- [Repair Guides](#-repair-guides)
- [Kontribusi](#-kontribusi)
- [Lisensi](#-lisensi)

## 🎯 Tentang Repository Ini

MacBook Pro 2012 adalah salah satu laptop legendaris Apple yang masih banyak digunakan hingga saat ini. Repository ini dibuat untuk membantu pengguna MacBook Pro 2012 dalam:

- 🔍 **Mengidentifikasi masalah** hardware dan software
- 🛠️ **Memperbaiki** berbagai issue yang umum terjadi
- 📊 **Monitoring** kesehatan komponen (battery, storage, dll)
- 🛒 **Referensi parts** untuk penggantian komponen
- 💡 **Tips & tricks** untuk maintenance

## ⚠️ Common Issues

Berikut adalah issue-issue umum yang sering terjadi pada MacBook Pro 2012:

### � Battery & Power Issues

| Issue | Gejala | Status |
|-------|--------|--------|
| Battery Degradation | Kapasitas menurun drastis, cepat habis | [📁 battery/](./battery/) |
| Charging Problems | Tidak charging atau charging intermittent | [📁 battery/](./battery/) |
| MagSafe Connector | Konektor charging rusak atau kotor | [📁 battery/](./battery/) |
| Power Adapter Failure | Adapter tidak terdeteksi atau overheat | [📁 battery/](./battery/) |

### 💾 Storage Issues

| Issue | Gejala | Status |
|-------|--------|--------|
| HDD Slow Performance | System lambat, beach ball sering muncul | Coming soon |
| SSD Upgrade | Upgrade dari HDD ke SSD | Coming soon |
| Storage Cable Failure | Drive tidak terdeteksi | Coming soon |

### 🖥️ Display Issues

| Issue | Gejala | Status |
|-------|--------|--------|
| Screen Flickering | Layar berkedip atau bergaris | Coming soon |
| Backlight Issues | Backlight mati atau redup | Coming soon |
| Dead Pixels | Pixel mati atau stuck | Coming soon |

### 🌡️ Thermal Issues

| Issue | Gejala | Status |
|-------|--------|--------|
| Overheating | Laptop panas berlebihan | Coming soon |
| Fan Noise | Fan berisik atau berputar kencang terus | Coming soon |
| Thermal Paste | Thermal paste kering | Coming soon |

### ⌨️ Keyboard & Trackpad

| Issue | Gejala | Status |
|-------|--------|--------|
| Keyboard Not Working | Beberapa key tidak responsif | Coming soon |
| Trackpad Issues | Trackpad tidak click atau gestures gagal | Coming soon |
| Water Damage | Terkena tumpahan cairan | Coming soon |

### ⌨️ Keyboard & Trackpad

| Issue | Gejala | Status |
|-------|--------|--------|
| Keyboard Not Working | Beberapa key tidak responsif | Coming soon |
| Trackpad Issues | Trackpad tidak click atau gestures gagal | Coming soon |
| Water Damage | Terkena tumpahan cairan | Coming soon |

## 🛒 Replacement Parts Guide

Panduan lengkap untuk membeli replacement parts MacBook Pro 2012. Semua referensi parts tersedia di folder [`images/`](./images/).

### � Battery Replacement

![Battery Replacement](./images/battery-replacement.jpg)

**Spesifikasi Battery MacBook Pro 2012:**
- **13" Model (A1278):** A1322 - 63.5Wh - 10.95V
- **15" Model (A1286):** A1382 - 77.5Wh - 10.95V

**Rekomendasi Brand:**
- ✅ Original Apple Battery (Mahal, tapi paling reliable)
- ✅ NewerTech NuPower (Third-party terbaik)
- ⚠️ Generic Battery (Lebih murah, quality varies)

**Harga Estimasi:**
- Original: $129 - $179
- NewerTech: $89 - $129  
- Generic: $30 - $60

> 📸 **Lihat foto parts:** Cek folder `images/battery-*` untuk visual guide

### � MagSafe Power Adapter

![MagSafe Adapter](./images/magsafe-adapter.jpg)

**Spesifikasi:**
- **Type:** MagSafe 1 (bentuk L atau T)
- **Power:** 60W (13") atau 85W (15")
- **Voltage:** 16.5V

**Tips Membeli:**
- Pastikan membeli MagSafe 1 (bukan MagSafe 2)
- Pilih wattage sesuai model (60W untuk 13", 85W untuk 15")
- Cek kondisi kabel (jangan yang sudah lecet/exposed wire)

> 📸 **Lihat foto parts:** Cek folder `images/magsafe-*` untuk visual guide

### 💾 Storage Upgrade

![SSD Upgrade](./images/ssd-upgrade.jpg)

**Kompatibilitas:**
- ✅ SATA III 2.5" SSD (Semua brand)
- ✅ SATA III HDD 2.5" 9.5mm
- ⚠️ NVMe (Perlu adapter khusus)

**Rekomendasi SSD:**
- Samsung 870 EVO (500GB - 2TB)
- Crucial MX500 (500GB - 2TB)
- WD Blue 3D NAND (500GB - 2TB)

**Harga Estimasi (500GB):**
- Samsung 870 EVO: $50 - $70
- Crucial MX500: $45 - $65
- WD Blue: $45 - $60

> 📸 **Lihat foto parts:** Cek folder `images/ssd-*` untuk visual guide

### 🔧 RAM Upgrade

![RAM Upgrade](./images/ram-upgrade.jpg)

**Spesifikasi:**
- **Type:** DDR3 1600MHz (PC3-12800)
- **Form Factor:** SO-DIMM
- **Max Capacity:** 16GB (2x 8GB)
- **Slots:** 2 slots

**Rekomendasi Brand:**
- Crucial
- Kingston
- Corsair

**Harga Estimasi (16GB Kit):**
- $40 - $60

> � **Lihat foto parts:** Cek folder `images/ram-*` untuk visual guide

### 🌡️ Thermal Paste & Cooling

![Thermal Paste](./images/thermal-paste.jpg)

**Rekomendasi Thermal Paste:**
- Arctic MX-4
- Noctua NT-H1
- Thermal Grizzly Kryonaut

**Kapan Harus Replace:**
- Setiap 2-3 tahun
- Jika laptop sering overheat
- Setelah membuka heatsink

> 📸 **Lihat foto parts:** Cek folder `images/thermal-*` untuk visual guide

## 🛠️ Monitoring Tools

### 🔋 Battery Monitoring

Tool lengkap untuk monitoring kesehatan baterai pada Linux (Arch Linux).

📂 **Lokasi:** [`battery/`](./battery/)

**Fitur:**
- ✅ Real-time battery status monitoring
- ⚡ Voltage & current monitoring
- 📊 Automatic logging
- 🔍 Battery health diagnostics

**Quick Start:**
```bash
cd battery/
chmod +x *.sh
./battery-status.sh
```

📖 **Dokumentasi lengkap:** [battery/README.md](./battery/README.md)

### 💾 Storage Monitoring

Coming soon - SMART monitoring tools untuk HDD/SSD

### 🌡️ Temperature Monitoring  

Coming soon - Temperature & fan speed monitoring

## 📚 Repair Guides

### 🔋 Battery Replacement Guide

**Difficulty:** ⭐⭐☆☆☆ (Easy)

**Tools Needed:**
- Phillips #00 screwdriver
- Tri-wing Y1 screwdriver (untuk battery screws)

**Steps:**
1. Shutdown dan cabut semua kabel
2. Buka 10 baut bottom case (Phillips #00)
3. Lepas 3 baut battery (Tri-wing Y1)
4. Disconnect battery connector
5. Install battery baru
6. Reverse steps untuk assembly

> 📸 **Visual Guide:** Lihat folder `images/repair-battery-*`

### 💾 SSD Upgrade Guide

**Difficulty:** ⭐⭐☆☆☆ (Easy)

**Tools Needed:**
- Phillips #00 screwdriver
- Torx T6 screwdriver (untuk HDD bracket)

**Steps:**
1. Backup semua data!
2. Buka bottom case
3. Lepas 2 baut HDD bracket
4. Disconnect SATA cable
5. Install SSD baru
6. Clone system atau clean install

> 📸 **Visual Guide:** Lihat folder `images/repair-ssd-*`

### 🌡️ Thermal Paste Replacement

**Difficulty:** ⭐⭐⭐⭐☆ (Advanced)

**Tools Needed:**
- Phillips #00 screwdriver
- Thermal paste
- Isopropyl alcohol 90%+
- Lint-free cloth

> 📸 **Visual Guide:** Lihat folder `images/repair-thermal-*`

## 📁 Struktur Repository

## 📁 Struktur Repository

```
macpro-2012-issue/
├── README.md                 # Dokumentasi utama
├── LICENSE                   # MIT License
│
├── battery/                  # Battery monitoring tools
│   ├── README.md            # Dokumentasi battery tools
│   ├── battery-status.sh    # Simple battery status
│   ├── check_power.sh       # Quick power check
│   ├── check_voltage.sh     # Full voltage diagnostics
│   └── voltage_monitor.sh   # Voltage monitoring with logging
│
└── images/                   # Visual guides & parts reference
    ├── battery-*.jpg        # Battery replacement photos
    ├── magsafe-*.jpg        # MagSafe adapter photos
    ├── ssd-*.jpg           # SSD upgrade photos
    ├── ram-*.jpg           # RAM upgrade photos
    ├── thermal-*.jpg       # Thermal paste photos
    └── repair-*.jpg        # Step-by-step repair photos
```

## 🚀 Quick Start

### Clone Repository

```bash
git clone https://github.com/Dlanang/macpro-2012-issue.git
cd macpro-2012-issue
```

### Battery Monitoring (Linux)

```bash
cd battery/
chmod +x *.sh
./battery-status.sh
```

### Lihat Parts Reference

```bash
# Buka folder images untuk melihat foto parts
cd images/
ls -la
```

## 🤝 Kontribusi

Kontribusi sangat diterima! Repository ini dibuat untuk komunitas MacBook Pro 2012 users.

### Cara Berkontribusi:

1. Fork repository ini
2. Buat branch fitur baru (`git checkout -b feature/AmazingFeature`)
3. Commit perubahan (`git commit -m 'feat: add some AmazingFeature'`)
4. Push ke branch (`git push origin feature/AmazingFeature`)
5. Buat Pull Request

### Yang Bisa Dikontribusikan:

- 📝 Dokumentasi issue baru
- 🛠️ Repair guides dengan foto
- 💻 Monitoring scripts/tools
- 📸 Foto replacement parts
- 💡 Tips & tricks
- 🐛 Bug reports & fixes

### Konvensi Commit

Gunakan [Conventional Commits](https://www.conventionalcommits.org/):

- `feat:` - Fitur baru atau konten baru
- `fix:` - Perbaikan bug atau kesalahan dokumentasi
- `docs:` - Update dokumentasi
- `refactor:` - Reorganisasi struktur
- `chore:` - Maintenance tasks

## 📖 Resources

### Official Documentation
- [Apple MacBook Pro 2012 Specs](https://support.apple.com/kb/sp649)
- [Apple Service Manual](https://www.ifixit.com/Device/MacBook_Pro_13%22_Unibody_Mid_2012)

### Community
- [r/macbookpro](https://reddit.com/r/macbookpro)
- [MacRumors Forums](https://forums.macrumors.com/)
- [iFixit MacBook Pro Guides](https://www.ifixit.com/Device/MacBook_Pro_13%22_Unibody_Mid_2012)

### Tools & Software
- [coconutBattery](https://www.coconut-flavour.com/coconutbattery/) - Battery health (macOS)
- [iStat Menus](https://bjango.com/mac/istatmenus/) - System monitoring (macOS)
- [smcFanControl](https://github.com/hholtmann/smcFanControl) - Fan control (macOS)

## 📄 Lisensi

Project ini menggunakan MIT License - lihat file [LICENSE](LICENSE) untuk detail.

## 👤 Author

**Dlanang**
- GitHub: [@Dlanang](https://github.com/Dlanang)

## 🙏 Acknowledgments

- Komunitas MacBook Pro 2012 users di seluruh dunia
- [iFixit](https://www.ifixit.com/) untuk repair guides
- Linux kernel contributors untuk sysfs documentation
- Semua kontributor open source

---

## ⚠️ Disclaimer

**IMPORTANT:** 

- Repair dilakukan dengan risiko sendiri. Penulis tidak bertanggung jawab atas kerusakan hardware yang mungkin terjadi.
- Membuka MacBook akan membatalkan garansi Apple (jika masih ada).
- Pastikan selalu backup data sebelum melakukan upgrade atau repair.
- Gunakan tools yang tepat dan ikuti safety precautions.
- Jika tidak yakin, sebaiknya bawa ke teknisi profesional.

---

<div align="center">

**Made with ❤️ for MacBook Pro 2012 Community**

⭐ Star repository ini jika bermanfaat!

</div>

