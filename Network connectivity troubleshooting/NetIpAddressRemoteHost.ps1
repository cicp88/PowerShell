#Get-NetIpAddress from a remote host

#Instruct the user to click "start" and type "powershell"
#Have them click on Windows PowerShell and type "hostname"

$ComputerName = "hostname" #replace hostname with actual computer's name

Invoke-Command -ComputerName $ComputerName -ScriptBlock {Get-NetIpAddress}