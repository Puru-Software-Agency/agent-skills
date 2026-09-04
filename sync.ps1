# Script PowerShell untuk mempermudah Sync/Push Skill Baru ke GitHub

param (
    [string]$Message = "Update agent skills: $(Get-Date -Format 'yyyy-MM-dd HH:mm')"
)

Write-Host "Menambahkan file baru/perubahan..." -ForegroundColor Cyan
git add .

Write-Host "Membuat commit: '$Message'..." -ForegroundColor Cyan
git commit -m $Message

Write-Host "Mengirim perubahan ke GitHub..." -ForegroundColor Cyan
git push origin main

Write-Host "Selesai! Skill berhasil disinkronkan ke GitHub." -ForegroundColor Green
