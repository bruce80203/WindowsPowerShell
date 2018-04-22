Set-Variable -Name "curUser" -value "$env:UserName"
function gohome { set-location "C:\Users\$curUser"; dir}
function pow { set-location "C:\Users\$curUser\Documents\WindowsPowerShell"; dir}
function desktop { set-location "C:\Users\$curUser\Desktop"; dir}
Set-Alias ll Get-ChildItem
Set-Alias bug bug.ps1
Set-Alias fox FirefoxLauncher.ps1
Set-Alias chrome ChromeLauncher.ps1
Set-Alias ie ExplorerLauncher.ps1