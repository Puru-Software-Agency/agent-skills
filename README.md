# Agent Skills Collection

Repository ini berisi kumpulan custom skills untuk AI Agent (**Google Antigravity / AGY**) agar dapat disinkronkan dan digunakan di berbagai device.

## Struktur Direktori Antigravity

Repository ini mengikuti standar struktur skill Antigravity:
```text
D:\AGENT-SKILLS\
├── plugin.json
├── sync.ps1
├── skills/
│   ├── ai-seo/SKILL.md
│   ├── brand-guidelines/SKILL.md
│   ├── copywriting/SKILL.md
│   ├── figma/SKILL.md
│   ├── frontend-design/SKILL.md
│   ├── humanizer/SKILL.md
│   ├── shadcn/SKILL.md
│   ├── tailwind-design-system/SKILL.md
│   └── ...
```

## Daftar Skill Aktif

- **AI SEO** (`skills/ai-seo/SKILL.md`): Optimasi konten untuk AI search engines (Perplexity, ChatGPT, Google AI Overviews).
- **Animate** (`skills/animate/SKILL.md`): Animasi frontend, transisi, dan motion design.
- **Brainstorming** (`skills/brainstorming/SKILL.md`): Eksplorasi ide dan konseptualisasi proyek/fitur.
- **Brand Guidelines** (`skills/brand-guidelines/SKILL.md`): Standar warna, tipografi, dan gaya visual.
- **Copywriting** (`skills/copywriting/SKILL.md`): Penulisan copy persuasif dan konten pemasaran.
- **Create Design** (`skills/create-design/SKILL.md`): Membuat atau memperbarui dokumen panduan sistem desain `DESIGN.md`.
- **Design Taste Frontend** (`skills/design-taste-frontend/SKILL.md`): Polishing dan standar estetika antarmuka UI.
- **Doc Co-Authoring** (`skills/doc-coauthoring/SKILL.md`): Penulisan bersama dokumen teknis dan spesifikasi.
- **Emil Design Eng** (`skills/emil-design-eng/SKILL.md`): Engineering design sistem interaksi canggih.
- **Extract Design System** (`skills/extract-design-system/SKILL.md`): Ekstraksi token dan komponen desain.
- **Figma** (`skills/figma/SKILL.md`): Integrasi dan panduan desain Figma.
- **Figma Implement Design** (`skills/figma-implement-design/SKILL.md`): Implementasi rancangan Figma ke kode.
- **Frontend Design** (`skills/frontend-design/SKILL.md`): Standard & guideline desain frontend.
- **Humanizer** (`skills/humanizer/SKILL.md`): Merapikan teks AI agar terdengar alami dan manusiawi.
- **Security Best Practices** (`skills/security-best-practices/SKILL.md`): Standar keamanan kode per bahasa/framework.
- **Security Threat Model** (`skills/security-threat-model/SKILL.md`): Pemodelan ancaman dan mitigasi celah keamanan.
- **Sentry** (`skills/sentry/SKILL.md`): Monitoring error dan integrasi Sentry.
- **SEO Audit** (`skills/seo-audit/SKILL.md`): Audit teknis SEO dan struktur halaman.
- **Shadcn UI** (`skills/shadcn/SKILL.md`): Implementasi dan styling komponen Shadcn UI.
- **Tailwind Design System** (`skills/tailwind-design-system/SKILL.md`): Aturan & komponen Tailwind CSS.
- **Theme Factory** (`skills/theme-factory/SKILL.md`): Pembuatan dan pengaturan tema warna/desain.
- **To PRD** (`skills/to-prd/SKILL.md`): Template pembuatan Product Requirement Document (PRD).
- **Web Design Guidelines** (`skills/web-design-guidelines/SKILL.md`): Panduan UX/UI website modern.

## Cara Sinkronisasi Skill

### Menambah/Update Skill Baru dari Device Ini
1. Buat folder baru di dalam `skills/<nama-skill>/` dan letakkan file `SKILL.md` dengan YAML frontmatter (`name` & `description`).
2. Jalankan script helper `sync.ps1` di PowerShell:
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

### Registrasi di Device Baru untuk Antigravity
Di device baru, Anda cukup menghubungkan folder repo ini ke Antigravity via Junction:
```powershell
cmd /c mklink /J "$HOME\.gemini\config\plugins\agent-skills" "D:\AGENT-SKILLS"
```
Atau tambahkan path folder `skills` ke file `$HOME\.gemini\config\skills.json`.
