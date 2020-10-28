##
#       Foreach Files VolumeGroup in Text file, set flashmode enabled to true
#            by: Danny Rosales
#            Saturday, October 24, 2020 4:31:07 PM
#
#
#
##

$files_vg = get-content .\files_vgs.txt
function setuuidflashmode {
         ForEach ($uuid in $files_vg ) {
		 set-ntnxvolumegroup -uuid $uuid -flashmodeenabled $true
	}
 		   
}
setuuidflashmode
