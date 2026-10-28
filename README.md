# Agent Skills Collection

Kumpulan **35 Custom Skills** tingkat lanjut untuk AI Agent (**Google Antigravity / AGY**, Claude Code, Cursor, Codex, OpenCode) yang distandarkan dan disatukan dalam satu direktori tunggal untuk reusability maksimal di berbagai project dan device.

---

## Arsitektur & Struktur Direktori Tunggal

Seluruh skill disatukan dalam satu direktori tunggal `skills/` sebagai *Single Source of Truth*:

```text
AGENT-SKILLS/
├── plugin.json               # Konfigurasi plugin Antigravity
├── install.ps1               # Helper instalasi otomatis (Junction + JSON Config)
├── sync.ps1                  # Helper Git sync (Add, Commit, Push)
├── .gitignore                # Filter file lokal/OS
├── README.md                 # Dokumentasi katalog skill
└── skills/                   # Direktori tunggal seluruh skill (35 skills)
    ├── ai-image-generation/SKILL.md
    ├── ai-seo/SKILL.md
    ├── animate/SKILL.md
    ├── apple-design/SKILL.md
    ├── brainstorming/SKILL.md
    ├── brand-guidelines/SKILL.md
    ├── copywriting/SKILL.md
    ├── design-an-interface/SKILL.md
    ├── design-motion-principles/SKILL.md
    ├── design-taste-frontend/SKILL.md
    ├── doc-coauthoring/SKILL.md
    ├── emil-design-eng/SKILL.md
    ├── extract-design-system/SKILL.md
    ├── figma/SKILL.md
    ├── figma-implement-design/SKILL.md
    ├── frontend-design/SKILL.md
    ├── high-end-visual-design/SKILL.md
    ├── humanizer/SKILL.md
    ├── imagegen-frontend-mobile/SKILL.md
    ├── imagegen-frontend-web/SKILL.md
    ├── impeccable/SKILL.md
    ├── mobile-android-design/SKILL.md
    ├── prototype/SKILL.md
    ├── redesign-existing-projects/SKILL.md
    ├── security-best-practices/SKILL.md
    ├── security-threat-model/SKILL.md
    ├── sentry/SKILL.md
    ├── seo-audit/SKILL.md
    ├── shadcn/SKILL.md
    ├── tailwind-design-system/SKILL.md
    ├── theme-factory/SKILL.md
    ├── to-prd/SKILL.md
    ├── ui-ux-pro-max/SKILL.md
    ├── web-artifacts-builder/SKILL.md
    └── web-design-guidelines/SKILL.md
```

---

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
## Katalog Skill (35 Skills)

### 1. UI/UX Architecture & Interface Design
- **[Apple Design](skills/apple-design/SKILL.md)**: Prinsip desain antarmuka Apple, fluid physical motion, spring physics, depth, dan gesture-driven UI.
- **[Design an Interface](skills/design-an-interface/SKILL.md)**: Eksplorasi berbagai alternatif arsitektur antarmuka & modul API ("Design It Twice").
- **[High-End Visual Design](skills/high-end-visual-design/SKILL.md)**: Standar desain visual agensi tingkat dunia (Awwwards-tier), tipografi, spacing, dan layout mahal.
- **[Impeccable](skills/impeccable/SKILL.md)**: Toolkit lengkap untuk audit visual, pembersihan UX, hierarchy, typography, edge cases, dan micro-interactions.
- **[Mobile Android Design](skills/mobile-android-design/SKILL.md)**: Desain aplikasi native Android berbasis Material Design 3 (Material You) dan Jetpack Compose adaptif.
- **[Prototype](skills/prototype/SKILL.md)**: Pembuatan throwaway prototype cepat untuk memvalidasi interaksi atau arsitektur state.
- **[Redesign Existing Projects](skills/redesign-existing-projects/SKILL.md)**: Upgrade tampilan web/aplikasi yang sudah ada agar terbebas dari pola generik AI ke standar premium.
- **[UI/UX Pro Max](skills/ui-ux-pro-max/SKILL.md)**: Database desain komprehensif (50+ styles, 97 color palettes, 57 font pairings, 99 UX guidelines, 25 chart types).
- **[Web Design Guidelines](skills/web-design-guidelines/SKILL.md)**: Review kepatuhan standar Web Interface Guidelines, UX, dan aksesibilitas (WCAG).

### 2. Frontend Engineering & Motion
- **[Animate](skills/animate/SKILL.md)**: Perancangan animasi web dari nol, pemilihan kurva bezier, durasi, interruptibility, dan exit motion.
- **[Design Motion Principles](skills/design-motion-principles/SKILL.md)**: Arsitektur motion interaktif berbasis teknik Emil Kowalski, Jakub Krehel, dan Jhey Tompkins.
- **[Design Taste Frontend](skills/design-taste-frontend/SKILL.md)**: Pendekatan anti-slop untuk landing page dan web app dengan visual terpoles dan non-templated.
- **[Emil Design Eng](skills/emil-design-eng/SKILL.md)**: Filosofi engineering UI, spring animation, popover origin, dan detail interaksi mikro.
- **[Frontend Design](skills/frontend-design/SKILL.md)**: Standardisasi pembuatan komponen frontend produksi dengan estetika tinggi.
- **[Shadcn UI](skills/shadcn/SKILL.md)**: Manajemen komponen Shadcn UI (install, styling, perbaikan, dan integrasi Tailwind).
- **[Web Artifacts Builder](skills/web-artifacts-builder/SKILL.md)**: Pembuatan artifact HTML/React interaktif multi-komponen dengan state management.

### 3. Design System & Theming
- **[Extract Design System](skills/extract-design-system/SKILL.md)**: Ekstraksi token warna, tipografi, dan radius dari situs web publik.
- **[Tailwind Design System](skills/tailwind-design-system/SKILL.md)**: Pembangunan scalable design system dengan Tailwind CSS v4 dan design tokens.
- **[Theme Factory](skills/theme-factory/SKILL.md)**: Pengaturan tema warna dan tipografi otomatis untuk slide, dokumen, dan landing page.

### 4. Figma to Code
- **[Figma](skills/figma/SKILL.md)**: Integrasi context desain, pengambilan token, variabel, dan screenshot dari Figma.
- **[Figma Implement Design](skills/figma-implement-design/SKILL.md)**: Penerjemahan desain Figma ke kode aplikasi siap pakai dengan akurasi 1:1.

### 5. AI & Image Generation
- **[AI Image Generation](skills/ai-image-generation/SKILL.md)**: Pembuatan gambar dengan prompt cerdas via model FLUX, GPT-Image-2, Gemini 3 Pro Image, Seedream, dan Grok.
- **[ImageGen Frontend Mobile](skills/imagegen-frontend-mobile/SKILL.md)**: Art direction aset visual & mockup flow aplikasi mobile (iOS/Android) yang konsisten dan siap coding.
- **[ImageGen Frontend Web](skills/imagegen-frontend-web/SKILL.md)**: Panduan pembuatan gambar per-section landing page dengan komposisi seimbang dan palet terkontrol.

### 6. SEO, Copywriting & Content
- **[AI SEO](skills/ai-seo/SKILL.md)**: Optimasi konten agar disitasi oleh AI Search Engines (Perplexity, ChatGPT Search, Google AI Overviews).
- **[Copywriting](skills/copywriting/SKILL.md)**: Penulisan copy persuasif dan konten pemasaran berfokus konversi.
- **[Humanizer](skills/humanizer/SKILL.md)**: Menghapus pola tulisan kaku AI agar teks terdengar natural dan otentik seperti tulisan manusia.
- **[SEO Audit](skills/seo-audit/SKILL.md)**: Audit teknis on-page SEO, Core Web Vitals, metadata, dan crawlability.

### 7. Product Discovery & Ideation
- **[Brainstorming](skills/brainstorming/SKILL.md)**: Eksplorasi kebutuhan user, perancangan ide, dan konseptualisasi sebelum implementasi.
- **[Doc Co-Authoring](skills/doc-coauthoring/SKILL.md)**: Penulisan terstruktur dokumen teknis, proposal fitur, dan spesifikasi sistem.
- **[To PRD](skills/to-prd/SKILL.md)**: Penyusunan Product Requirement Document (PRD) otomatis dari diskusi sesi kerja.

### 8. Security, Quality & Observability
- **[Brand Guidelines](skills/brand-guidelines/SKILL.md)**: Panduan warna, tipografi, dan gaya visual resmi (Anthropic format).
- **[Security Best Practices](skills/security-best-practices/SKILL.md)**: Panduan penulisan kode aman berdasarkan bahasa dan framework.
- **[Security Threat Model](skills/security-threat-model/SKILL.md)**: Pemodelan ancaman keamanan, evaluasi celah, dan mitigasi risiko aplikasi.
- **[Sentry](skills/sentry/SKILL.md)**: Pemantauan error dan query issue produksi menggunakan Sentry CLI.

---

## Cara Instalasi & Sinkronisasi

### 1. Registrasi Otomatis ke Antigravity
Jalankan script `install.ps1` di terminal PowerShell:
```powershell
.\install.ps1
```
Script ini akan:
- Menghubungkan repositori ini sebagai plugin Antigravity di `$HOME\.gemini\config\plugins\agent-skills`.
- Mendaftarkan path `skills/` ke file global `$HOME\.gemini\config\skills.json`.
- Mengaktifkan plugin di `$HOME\.gemini\config\config.json`.
- Memastikan tidak ada folder junction duplikat di dalam repositori.

### 2. Menambah Skill Baru
1. Buat folder baru di bawah `skills/<nama-skill>/`.
2. Letakkan file `SKILL.md` dengan YAML frontmatter (`name` & `description`).
3. Jalankan script `sync.ps1`:
```powershell
.\sync.ps1 "Menambahkan skill <nama-skill>"
```

### 3. Sinkronisasi di Device Lain
Cukup clone/pull repo ini lalu jalankan `install.ps1`:
```powershell
git pull origin main
.\install.ps1
```
