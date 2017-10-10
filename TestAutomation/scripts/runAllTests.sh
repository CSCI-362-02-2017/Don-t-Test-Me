# RUN ME FROM Don-t-Test-Me/TestAutomation as ./scripts/runAllScripts.sh

readarray -t array < ./testCases/testCase0.txt.example

ruby "./testCasesExecutables/${array[6]}.rb.example” "${array[5]}"

