# RUN ME FROM Don-t-Test-Me/TestAutomation as ./scripts/runAllScripts.sh

readarray -t array < ./testCases/testCase1.txt

ruby "./testCasesExecutables/${array[6]}.rb" "${array[5]}"

