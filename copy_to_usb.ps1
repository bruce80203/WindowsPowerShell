Function Copy-File($infile, $outfile) {
    if (Test-Path $outfile) {
        Remove-Item $outfile -Recurse
    }
    Copy-Item -Path $infile -Destination $outfile -Recurse
}

if (Test-Path D:) {
    Write-Host "`nD: is attached copying files to usb"
    Copy-File -infile 'C:\Users\bwoodcock\Desktop\send_home' -outfile 'D:\from_work'
    dir D:\from_work
    Write-Host "`n================== COPY COMPLETE =================="
} else {
    Write-Host "`nD: is not attached exiting now"
    exit
}