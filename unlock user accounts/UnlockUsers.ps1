#unlock locked accounts and reset to default password

$locked = Search-ADAccount -LockedOut
$pass='Pa55w.rd' #modify this to your org's default password
$Newpass = ConvertTo-SecureString -String "$pass" -AsPlainText -Force

if($locked){
$check=Read-Host "$($locked.name) account(s) is/are locked. Do you want to unlock and reset password to $pass  ? Answer [Y/N]"
}
if($check -eq 'Y'){
Foreach($user in $locked){
  Unlock-ADAccount -Identity $user -Verbose
   Set-ADAccountPassword $user  -Reset -NewPassword $Newpass
    Set-ADUser -Identity $user -ChangePasswordAtLogon $true -Verbose 
    }
    }