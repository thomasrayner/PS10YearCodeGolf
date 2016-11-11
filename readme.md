#PowerShell 10 Year Anniversary Celebration Code Golf
This repo holds the Pester tests for the three Code Golf holes for the [PowerShell 10 Year Anniversary Celebration](https://channel9.msdn.com/Events/PowerShell-Team/PowerShell-10-Year-Anniversary).

##What is code golf?
Code golf is a "solve this scripting puzzle" competition with a twist. In addition to coming up with the PowerShell script to solve a given puzzle, you must do so in as few characters as possible. This means using aliases, exploiting strange language behaviors, and being generally tricky.

For example, let's say that one hole (aka puzzle) was "Return the names of all of the files in the present working directory". One code golfer might submit `Get-ChildItem | Select-Object -Property Name` and another code golfer might submit `ls|select n*`.

The first golfer has code that is far more compliant with best practices, but the second golfer would win the hole by accomplishing the given task in fewer characters.


##This Competition
For the 10 year anniversary of PowerShell, we are putting out three holes of code golf on [code-golf.com](http://code-golf.com) which can be found here:

1. Hole 1 - *link coming soon*

2. Hole 2 - *link coming soon*

3. Hole 3 - *link coming soon*

Each hole has a unique challenge for golfers to attempt to accomplish in as few characters as possible. Each hole also has an associated Pester test (hosted in this GitHub repo and linked on the code-golf.com page) that the submission must pass in order for a user's submission to be considered valid.

Submit your code for a given hole by signing into code-golf.com with your GitHub account and following the steps on the code-golf.com site to submit a solution.

The winner of each hole will be the person whose submission:
- Uses the fewest characters
- Passes the Pester test for the hole
- Was submitted first

Submissions will be evaluated and winners announced soon after the PowerShell 10 Year Anniversary Celebration is over.

##How do I know if my code passes the Pester test for the hole?
First you need to make sure you have Pester installed and loaded. Just run `get-module pester` to determine if it's loaded. If you get nothing back, run `import-module pester`. If that command doesn't complete successfully, you probably don't have the Pester module installed. Run `Install-Module -Name Pester -Scope CurrentUser` followed by the import command again.

If you have Pester installed, all you need to do is download the Pester test for the hole (named Hole1/2/3.tests.ps1), call it from the commandline and pass it your submission as a string, like so.
`.\Hole1.Tests.ps1 -UserSubmission 'ls|select n*'`
Make sure to wrap your code in single quotation marks, not double quotation marks. Also, if your submission is more than one line, consider replacing the line breaks with semi-colons which count for the same number of characters in this case. If you cannot provide a single line submission or have other issues passing your submission as a parameter to the Tests.ps1 script, you may consider opening the Tests.ps1 file and editing it manually. **We recommend passing your submission to the Pester test script as a parameter.**

