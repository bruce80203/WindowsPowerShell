# open srs.txt should contain a list of all open cases, edit to reflect salesforce and then run to check old cases directory

foreach($line in Get-Content ".\open srs.txt") {
    Write-Host "checking $line"
    Get-ChildItem 'C:\Users\bwoodcock\Old Cases' | ? {$_.Name -match $line}
}