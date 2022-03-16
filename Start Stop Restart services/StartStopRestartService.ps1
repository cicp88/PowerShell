#Start/Stop/Restart a service on a remote machine

#you can have multiple machines in the -ComputerName parameter

$Service = Get-Service -Name 'print spooler' -ErrorAction stop -ComputerName lon-cl1,lon-svr1
 
 start-Service -InputObj $Service -erroraction stop 