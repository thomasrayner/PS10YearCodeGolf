[CmdletBinding()]            
param
(
    [Parameter(Position = 0)]
    [string]$UserSubmission
)

# get the top ten file extensions in c:\windows\system32
$userSubmissionOutput = Invoke-Expression $UserSubmission

Describe 'Hole 2' {
    It 'Only returns 10 items' {
        $userSubmissionOutput.Count | Should Be 10
    }
    It 'All start with a period then 2-4 characters' {
        ($userSubmissionOutput.Values -match '^\.[a-zA-Z]{2,4}').count | Should Be 10
    }
    It 'First result should be .dll' {
        $userSubmissionOutput[0].Name | Should Be '.dll'
    }
    It 'First result should be .exe' {
        $userSubmissionOutput[1].Name | Should Be '.exe'
    }
    It 'Results came from Group-Object' {
        $userSubmissionOutput[0] | Should BeOfType [Microsoft.PowerShell.Commands.GroupInfo]
    }
}