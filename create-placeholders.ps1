# Script untuk membuat placeholder gambar
# Jalankan script ini untuk membuat file placeholder PNG

$images = @(
    # BAB 3
    "arsitektur_teknologi.png",
    "usecase_diagram.png",
    "activity_donasi.png",
    "activity_payout.png",
    "sequence_donasi.png",
    "sequence_leaderboard.png",
    "erd.png",
    
    # BAB 4
    "halaman_login.png",
    "form_donasi.png",
    "pembayaran_midtrans.png",
    "dashboard_kreator.png",
    "halaman_payout.png",
    "notifikasi_donasi.png",
    "media_share.png",
    "qr_donasi.png",
    "leaderboard_donatur.png",
    "dashboard_admin.png",
    "tabel_creator.png",
    "tampilan_payout.png"
)

foreach ($img in $images) {
    $path = "images\$img"
    if (-not (Test-Path $path)) {
        # Buat file placeholder kosong
        New-Item -Path $path -ItemType File -Force | Out-Null
        Write-Host "Created placeholder: $img" -ForegroundColor Green
    }
    else {
        Write-Host "Already exists: $img" -ForegroundColor Yellow
    }
}

Write-Host "`nSelesai! Silakan ganti file placeholder dengan gambar asli Anda." -ForegroundColor Cyan
Write-Host "Lokasi: d:\Bismillah Project\Laporan-Nyumbangin\images\" -ForegroundColor Cyan
