#Create a VM in Azure using powershell

#click azure cloud shell in top right of the portal
#when prompted for Bash or Powershell select PowerShell
#if you have no storage mounted, create storage

#ensure PowerShell and not Bash is in the upper left corner of the Cloud Shell pane

New-AzVm `
-ResourceGroupName "<YourResourceGroupName>" `
-Name "<VmName>" `
-Location "<Location>" `
-VirtualNetworkName "<VirtualNetworkName>" `
-SubnetName "<SubnetName>" `
-SecurityGroupName "<SecurityGroupName>" `
-PublicIpAddressName "<PublicIpAddressName>"