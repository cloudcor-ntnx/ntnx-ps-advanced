	   <# 
	   
        .SYNOPSIS
            Put host into maintenance mode
    #>

$hostID = Read-host -prompt 'Enter the host ID'
$evacOption = Read-host -prompt 'Enter the VM Evacuation Option (options POWER_OFF, COLD_MIGRATE, LIVE_MIGRATE)'
start-ntnxmaintenancemode -hostID $hostID -evacuationoption $evacOption 
