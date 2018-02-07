$date = get-date -format yyyy-MM-dd
Write-Host "$date"
Do {
$number = $number + 1
Write-Host "current number is $number"
} While ($number -lt 5)
$number = 0

$users = "Amy","Bob","Candice","Dick","Eunice","Frank","Bruce"

ForEach($user in $users) {
    Write-Host "It's $user's turn"
} 

Write-Host (42).GetType()
Write-Host ("Bruce").GetType()
Write-Host (1,2,3).GetType()
Write-Host $users.Length
Write-Host $users[3]
Write-Host "Hello".Contains("Hell")
Write-Host $users[6].ToUpper()

# grep:
sls THREE .\demo.txt
sls three .\demo.txt -ca
# https://communary.net/2014/11/10/grep-the-powershell-way/