If ($args.Count -gt 1) {
    Start-Process "mstsc.exe" "/v " $args
} Else {
    Start-Process "mstsc.exe" "/v cava-pn-208-111"
}