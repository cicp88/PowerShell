#Map a network drive using powershell

#NOTE: Invoke-Command does not work with this
#Best to use Group Policy to map network drives/printers
#If working with a customer, send them this script and have them paste it into powershell
#Change DRIVE-LETTER and \\DEVICE-NAME-OR-IP\SHARED-FOLDER

New-PSDrive -Name "DRIVER-LETTER" -PSProvider "FileSystem" -Root "\\DEVICE-NAME-OR-IP\SHARED-FOLDER" -Persist

