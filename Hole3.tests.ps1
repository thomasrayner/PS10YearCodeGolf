[CmdletBinding()]            
param
(
    [Parameter(Position = 0)]
    [string]$UserSubmission
)

# get all the aliases that are not for a get command and are under 3 characters long
$userSubmissionOutput = Invoke-Expression $UserSubmission

Describe 'Hole 3' {
    It 'Does not contain any Get- commands' {
        ($userSubmissionOutput.resolvedcommand.name -notmatch 'Get-').Count | Should Be $userSubmissionOutput.Count
    }
    It 'All aliases are less than 3 characters long' {
        ($userSubmissionOutput.Name | Where-Object { $_.Length -lt 3 }).Count | Should Be $userSubmissionOutput.Count
    }
}