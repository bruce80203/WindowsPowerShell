Function Copy-File($infile, $outfile) {
    if (Test-Path $outfile) {
        Write-Output "Removing $outfile"
        Remove-Item $outfile -Recurse
    }
    Write-Output "copying $infile to $outfile"
    Copy-Item -Path $infile -Destination $outfile -Recurse
}

Copy-File -infile "C:\Users\bwoodcock\Desktop\" -outfile "S:\Technical Support\bwoodcock\Desktop backup\" -Recurse
Copy-File -infile "C:\Users\bwoodcock\Documents\" -outfile "S:\Technical Support\bwoodcock\Documents backup\" -Recurse
Copy-File -infile "C:\Users\bwoodcock\Pictures\" -outfile "S:\Technical Support\bwoodcock\Pictures backup\" -Recurse
Copy-File -infile "C:\Users\bwoodcock\Downloads" -outfile "S:\Technical Support\bwoodcock\Downloads backup\" -Recurse
Copy-File -infile "H:\" -outfile "S:\Technical Support\bwoodcock\gss-prd-csp-2 backup\" -Recurse