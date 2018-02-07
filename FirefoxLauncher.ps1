If ($args.Count -gt 1) {
    Start-Process "firefox.exe" $args
} Else {
    Start-Process "firefox.exe"
}