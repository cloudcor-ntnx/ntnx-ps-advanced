	   <# 
	   
        .SYNOPSIS
            Prompts for basic parameters for a new VM container, no disk has been added 

    #>


$VMName = Read-host -prompt 'Enter the Name of the VM'
$vCPUs = Read-host -prompt 'Enter the # of vCPUs'
$ramMB = Read-host -prompt 'Enter the amount of RAM in MB (example = 2048 for 2GB)'
$guestOS = Read-host -promt 'Enter the guestOS' 
New-NTNXVirtualMachine -Name $VMName -NumVcpus $vCPUs -MemoryMb $ramMB -guestOS $guestOS
