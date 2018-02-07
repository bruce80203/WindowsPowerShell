If ($args.Count -gt 1) {
    Start-Process "chrome.exe" $args
} Else {
    Start-Process "chrome.exe"
}