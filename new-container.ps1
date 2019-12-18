$containername = Read-host -prompt 'Enter the Name of the Container'
New-NTNXContainer -name $containername
