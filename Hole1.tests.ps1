[CmdletBinding()]
param
(
    [string]$UserSubmission
)

$userSubmissionOutput = . $UserSubmission

Describe 'Hole 1' {
    It 'example output' {
        $userSubmissionOutput | Should Be 'hello'
    }
    It 'example type' {
        $userSubmissionOutput | Should BeOfType [string]
    }
}