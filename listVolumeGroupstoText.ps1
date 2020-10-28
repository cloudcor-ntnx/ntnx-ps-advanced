##
#       Export FSVM's Volume Groups Name and UUID to a text file 
#            by: Danny Rosales
#            Saturday, October 24, 2020 4:31:07 PM
#  Gather the unique part of the fsvm name from Prism, that name 
#  will be the value for the '*Files-AR*' value below 
#
##

function exportFilesVGsToText {
        #get-ntnxvolumegroups gets all volume groups, were going to only get the ones for the 
		#fsvm we want to move to flashmode
		get-ntnxvolumegroups |where {$_.name -like '*Files-AR*'}|select-object -Expandproperty uuid |ft -autosize |out-file files_vgs.txt
        get-content .\files_vgs.txt
}
exportFilesVGsToText
