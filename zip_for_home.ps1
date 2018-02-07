# https://stackoverflow.com/questions/1153126/how-to-create-a-zip-archive-with-powershell

# Create archive
Function Create-Archive($infile, $outfile) {
    if (Test-Path $outfile) {
        Remove-Item $outfile
    }
    Compress-Archive -Path $infile -DestinationPath $outfile
}

# Add to archive
Function Add-Archive($infile, $outfile) {
    Compress-Archive -Path $infile -Update -DestinationPath $outfile
}

# Extract files
Function Extract-Archive($infile, $outfile) {
    if (Test-Path $outfile) {
        Remove-Item $outfile
    }
    Expand-Archive -Path $infile -DestinationPath $outfile
}

Function Copy-File($infile, $outfile) {
    if (Test-Path $outfile) {
        Remove-Item $outfile
    }
    Copy-Item -Path $infile -Destination $outfile
}

Create-Archive -infile 'C:\Users\bwoodcock\Pictures' -outfile 'C:\Users\bwoodcock\Desktop\send_home\vmware_Pictures.zip'
Create-Archive -infile 'C:\Users\bwoodcock\Documents' -outfile 'C:\Users\bwoodcock\Desktop\send_home\vmware_Documents.zip'
Create-Archive -infile 'C:\Users\bwoodcock\Documents\WindowsPowerShell\*.*' -outfile 'C:\Users\bwoodcock\Desktop\send_home\powershell_batch_files.zip'
Add-Archive -infile 'C:\Users\bwoodcock\Desktop\*.bat' -outfile 'C:\Users\bwoodcock\Desktop\send_home\powershell_batch_files.zip'
Add-Archive -infile 'C:\Users\bwoodcock\Desktop\*.ps1' -outfile 'C:\Users\bwoodcock\Desktop\send_home\powershell_batch_files.zip'
Add-Archive -infile 'C:\Users\bwoodcock\Documents\KB creating editing best practices etc\*.bat' -outfile 'C:\Users\bwoodcock\Desktop\send_home\powershell_batch_files.zip'
Copy-File -infile 'H:\allfiles.tar.gz' -outfile 'C:\Users\bwoodcock\Desktop\send_home\vmware_linux_files.gz'
#Extract-Archive -infile 'C:\Users\bwoodcock\Desktop\send_home\BingWallpaper.zip' -outfile 'C:\Users\bwoodcock\Desktop\send_home\BingWallpaper'
#Extract-Archive -infile 'C:\Users\bwoodcock\Desktop\send_home\powershell_batch_files.zip' -outfile 'C:\Users\bwoodcock\Desktop\send_home\powershell_batch_files'

.\copy_to_usb.ps1
Write-Host "`n================== SCRIPT COMPLETE =================="