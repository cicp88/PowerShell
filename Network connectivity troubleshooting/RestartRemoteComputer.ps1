#Get-netipconfiguration from a remote host

#Instruct the user to click "start" and type "powershell"
#Have them click on Windows PowerShell and type "hostname"

invoke-command -ComputerName hostname -scriptblock {Restart-Computer}
#replace hostname with the actual hostname