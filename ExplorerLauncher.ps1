If ($args.Count -gt 1) {
    Start-Process "iexplore.exe" $args
} Else {
    Start-Process "iexplore.exe"
}