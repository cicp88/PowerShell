#Remove a user from all groups except Domain Users

#for use when an employee leaves the organization

$user = Read-Host => [ Enter UserName ]

Write-host ... $user is member of these AD Groups -fore Yellow
Get-ADPrincipalGroupMembership -Identity  $user | Format-Table -Property name
Write-host ...Removing the Group Membership -fore DarkYellow
$ADGroups = Get-ADPrincipalGroupMembership -Identity  $user | Where-Object {$_.Name -ne “Domain Users”}
Remove-ADPrincipalGroupMembership -Identity  $user -MemberOf $ADGroups -Confirm:$false -verbose