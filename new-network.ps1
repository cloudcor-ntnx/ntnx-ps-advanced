	   <# 
	   
        .SYNOPSIS
            Prompts for vlan name and vlan ID's of a new network 

    #>

$networkName = Read-host -prompt 'Enter the Name of the Network'
$networkVLANID = Read-host -prompt 'Enter the VLANID'
New-ntnxNetwork -name $networkName -vlanid $networkVLANID

