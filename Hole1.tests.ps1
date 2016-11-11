[CmdletBinding()]            
param
(
    [Parameter(Position = 0)]
    [string]$UserSubmission
)

# get installed updates from the last 30 days
$userSubmissionOutput = Invoke-Expression $UserSubmission

Describe 'Hole 1' {
    It 'Only updates from the last 30 days' {
        $lastTenDays = $false
        If (($($userSubmissionOutput | sort-object -property InstalledOn)[0].InstalledOn) -gt (Get-Date).AddDays(-30)) {
            $lastTenDays = $true
        }
        $lastTenDays | Should Be $true
    }
    It 'Is the right type' {
        $userSubmissionOutput[0] | Should BeOfType [Microsoft.Management.Infrastructure.CimInstance]
    }
}