# RUN ME FROM Don-t-Test-Me/TestAutomation as ./scripts/runAllScripts.sh

readarray -t array < ./testCases/testCase0.txt.example

ruby ./testCasesExecutables/${array[5]}.rb.example ${array[4]}
