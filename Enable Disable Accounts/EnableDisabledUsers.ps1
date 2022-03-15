#Enable disabled Users without enabling the guest, defaultaccount, or krbtgt accounts
#this is assuming the guest, defaultaccount, and krbtgt accounts are in the Users container

Get-ADUser -Filter {(enabled -eq $false)} | 
 Where-Object {$_.DistinguishedName -notlike "*CN=Users,DC=Adatum,DC=com"} | 
 Enable-ADAccount