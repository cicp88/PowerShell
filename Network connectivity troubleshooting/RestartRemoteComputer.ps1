#Get-netipconfiguration from a remote host

#Instruct the user to click "start" and type "powershell"
#Have them click on Windows PowerShell and type "hostname"

$ComputerName = "hostname" #replace hostname with actual computer's name

invoke-command -ComputerName $ComputerName -scriptblock {Restart-Computer}
