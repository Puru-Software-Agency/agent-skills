# Script PowerShell untuk menginstal dan mendaftarkan Agent Skills ke Google Antigravity / AI Agent

$ErrorActionPreference = "Stop"
$repoPath = $PSScriptRoot
$geminiConfigDir = Join-Path $HOME ".gemini\config"
$pluginsDir = Join-Path $geminiConfigDir "plugins"
$pluginTarget = Join-Path $pluginsDir "agent-skills"
$skillsDir = Join-Path $repoPath "skills"
$skillsConfig = Join-Path $geminiConfigDir "skills.json"
$mainConfig = Join-Path $geminiConfigDir "config.json"

Write-Host "=========================================" -ForegroundColor Cyan
Write-Host " Menginstal Agent Skills ke Antigravity " -ForegroundColor Cyan
Write-Host "=========================================" -ForegroundColor Cyan
Write-Host "Lokasi Repository: $repoPath" -ForegroundColor Yellow

# 1. Bersihkan junction internal lama jika ada agar tidak ada duplikasi direktori
foreach ($oldDir in @(".agents\skills", ".agents", ".agent", ".claude")) {
    $fullPath = Join-Path $repoPath $oldDir
    if (Test-Path $fullPath) {
        cmd.exe /c rmdir "$fullPath" 2>$null
    }
}

# 2. Pastikan folder plugins ada
if (!(Test-Path $pluginsDir)) {
    New-Item -ItemType Directory -Path $pluginsDir -Force | Out-Null
}

# 3. Buat Directory Junction ke plugins Antigravity
if (Test-Path $pluginTarget) {
    Write-Host "[OK] Plugin junction sudah terpasang di $pluginTarget" -ForegroundColor Green
} else {
    Write-Host "[+] Membuat Plugin Junction di Antigravity..." -ForegroundColor Cyan
    cmd.exe /c mklink /J "$pluginTarget" "$repoPath" | Out-Null
    Write-Host "[OK] Junction berhasil dibuat: $pluginTarget" -ForegroundColor Green
}

# 4. Daftarkan di ~/.gemini/config/config.json
if (Test-Path $mainConfig) {
    try {
        $json = Get-Content $mainConfig -Raw | ConvertFrom-Json
        if (-not $json.plugins) {
            $json | Add-Member -MemberType NoteProperty -Name "plugins" -Value ([PSCustomObject]@{})
        }
        if (-not $json.plugins.'agent-skills') {
            $json.plugins | Add-Member -MemberType NoteProperty -Name "agent-skills" -Value ([PSCustomObject]@{ enabled = $true })
            $json | ConvertTo-Json -Depth 10 | Set-Content $mainConfig -Encoding UTF8
            Write-Host "[OK] agent-skills diaktifkan di config.json" -ForegroundColor Green
        } else {
            $json.plugins.'agent-skills'.enabled = $true
            $json | ConvertTo-Json -Depth 10 | Set-Content $mainConfig -Encoding UTF8
            Write-Host "[OK] agent-skills sudah aktif di config.json" -ForegroundColor Green
        }
    } catch {
        Write-Warning "Gagal memperbarui config.json secara otomatis: $_"
    }
}

# 5. Daftarkan path ke skills.json global (Single Source of Truth)
$skillsPathNormalized = ($skillsDir -replace '\\', '/')
$skillsJsonObj = [PSCustomObject]@{
    entries = @(
        [PSCustomObject]@{
            path = $skillsPathNormalized
        }
    )
}
$skillsJsonObj | ConvertTo-Json -Depth 5 | Set-Content $skillsConfig -Encoding UTF8
Write-Host "[OK] Path skills didaftarkan ke global $skillsConfig" -ForegroundColor Green

# 6. Hitung jumlah skill yang tersedia
$skillsCount = (Get-ChildItem -Directory $skillsDir).Count
Write-Host ""
Write-Host "=========================================" -ForegroundColor Green
Write-Host " INSTALASI BERHASIL ($skillsCount SKILLS AKTIF)!" -ForegroundColor Green
Write-Host "=========================================" -ForegroundColor Green
Write-Host "Semua skill disatukan dalam satu direktori tunggal: ./skills/" -ForegroundColor Cyan
Write-Host "Skill siap digunakan di Google Antigravity & AI Agents." -ForegroundColor White
Write-Host "Catatan: Jika Antigravity sedang berjalan, silakan restart IDE/CLI agar daftar plugin dimuat penuh." -ForegroundColor Yellow
