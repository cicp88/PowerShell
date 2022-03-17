#Get-EventLog on a remote host
#the script will export the log out to a .csv file
#replace Log with the name of the log you wish to see (Security,System,etc.)
#replace e:\LogName.csv with the location that you want to save the .csv to

#Instruct the user to click "start" and type "powershell"
#Have them click on Windows PowerShell and type "hostname"

$ComputerName = "hostname" #replace hostname with actual computer's name

invoke-command -ComputerName $ComputerName -scriptblock {Get-EventLog -Newest 10 -LogName Log}  | Export-Csv e:\LogName.csv