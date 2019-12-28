$VMName = Read-host -prompt 'Enter the Name of the VM'
$vCPUs = Read-host -prompt 'Enter the # of vCPUs'
$ramMB = Read-host -prompt 'Enter the amount of RAM in MB (example = 2048 for 2GB)'
New-NTNXVirtualMachine -Name $VMName -NumVcpus $vCPUs -MemoryMb $ramMB
