	   <# 
	   
        .SYNOPSIS
            Prompts for new container name and creates it with no specified parameters

    #>

$containername = Read-host -prompt 'Enter the Name of the Container'
New-NTNXContainer -name $containername
