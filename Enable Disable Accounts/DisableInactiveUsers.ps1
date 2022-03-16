#Disable user accounts that have not logged on in over 60 days

#NOTE: Your service accounts should be moved to an OU to prevent them from being inadvertedly deactivated
#NOTE: Keep in mind persons on long term leave!
#Change -TimeSpan value to match corporate security policy
    
$exclued = 'OU=Service Accounts,DC=Adatum,DC=com','OU=Long Term Leave,DC=Adatum,DC=com' #modify this to match your organization
         
Search-ADAccount -UsersOnly -AccountInactive -TimeSpan 60:00:00:00 |
    ForEach-Object{
        if ( ($_.distinguishedName -match '(?=OU=|DC=|CN=)(.*\n?)(?<=.)') -and ($exclued -contains $matches[1])){
            "Excluded $($_.Name)"
        }
        else{
            "Disabling $($_.Name)"
            $_ | Disable-ADAccount
        }
    }