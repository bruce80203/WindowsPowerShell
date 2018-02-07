$User = Read-Host -Prompt 'Input the user name'
$Server = $env:computername.ToLower()
$Date = Get-Date
Write-Host "You input User '$User' in '$Server' on '$Date'"