switch ($false) {
    (Get-Module -Name Pester -ListAvailable) { Install-Module Pester -Force -Scope CurrentUser; Import-Module Pester }
    (Get-Module -Name Pester) { Import-Module Pester -MinimumVersion 4}
    Default {}
}

Import-Module $PSScriptRoot\TestPSModule.psm1

Describe -Tags "Example" "Get-SomeData" {



    It "gets some data" {

        Get-SomeData | Should Be $true

    }

} 
