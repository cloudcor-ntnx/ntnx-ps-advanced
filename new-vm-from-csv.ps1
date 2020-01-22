	   <# 
	   
        .SYNOPSIS
            Prompts for path to a csv with the following collumns set 
             -NumVcpus $vmline.vCPU -MemoryMb $vmline.vRAM
            vDiskGB

NOT TESTED STILL WORKING ON THIS ONE

    #>

$csvPath = Read-host -prompt 'Enter absolute file path'
foreach($vmLine in (Import-Csv -Path $csvPath)){
 
    $vmname = $vmline.VMName

    
    Write-Verbose "Creating $vmname" -Verbose
    New-NTNXVirtualMachine -Name $VMName -NumVcpus $vmline.vCPU -MemoryMb $vmline.vRAM
 
    $diskCreateSpec = New-NTNXObject -Name VmDiskSpecCreateDTO
    $diskcreatespec.containerName = "$Container"
    $diskcreatespec.sizeMb = $vmline.vDiskGB
    
    
}
