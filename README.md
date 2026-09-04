# Agent Skills Collection

Repository ini berisi kumpulan custom skills untuk AI Agent (seperti Google Antigravity / AGY) agar dapat disinkronkan dan digunakan di berbagai device.

## Daftar Skill

- **AI SEO** (`ai-seo_SKILL.md`): Panduan & instruksi optimasi SEO berbasis AI.
- **Copywriting** (`copywriting_SKILL.md`): Template & panduan penulisan copywriting.
- **Frontend Design** (`frontend-design_SKILL.md`): Standard & guideline desain frontend.
- **Tailwind Design System** (`tailwind-design-system_SKILL.md`): Aturan & komponen Tailwind CSS.
- **To PRD** (`to-prd_SKILL.md`): Template pembuatan Product Requirement Document (PRD).

## Cara Sinkronisasi Skill

### Menambah/Update Skill Baru dari Device Ini
Setiap kali Anda menambah file skill baru, Anda tinggal menjalankan script helper `sync.ps1` di PowerShell:
```powershell
.\sync.ps1 "Menambahkan skill X"
```
*Atau secara manual:*
```bash
git add .
git commit -m "Tambah skill baru"
git push origin main
```

### Mengambil Update di Device Lain
```bash
git pull origin main
```

### Clone Pertama kali di Device Baru
```bash
git clone https://github.com/yoga220802/<nama-repo>.git
```
