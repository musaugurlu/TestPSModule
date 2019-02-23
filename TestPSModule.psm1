function Get-SomeData {
    [CmdletBinding()]
    param (
        
    )
    
    begin {
    }
    
    process {
        $data = Get-ADForest
    }
    
    end {
        Write-Output $data
    }
}