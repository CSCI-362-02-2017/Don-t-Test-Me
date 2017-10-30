# Team Name: Don't Test Me
# Run From:  Don-t-Test-Me/TestAutomation as ./scripts/runAllScripts.sh

# TODO: Delete ./reports/testReport.html (Not testReport.html.example)
# TODO: Clear all files from ./temp/
# TODO: Write some basic HTML to hold the test information
# TODO: Loop over files in ./testCases/ with .txt but not .txt.example
cd testCases/
for f in testCase01.txt testCase02.txt testCase03.txt testCase04.txt testCase05.txt
do
	# TODO: Add new row to HTML	
	# Read File as array
	readarray -t array < $f
	# TODO: Add test number to HTML (line 1 of file)
	# TODO: Add test description to HTML (line 2 of file)
	# TODO: Add test model to HTML (line 3 of file)
	# TODO: Add test method to HTML (line 4 of file)
	# TODO: Add test params to HTML (line 5 of file)
	# Execute ruby script and pass params and oracle value, assign result
	result=$(ruby ../testCasesExecutables/${array[5]}.rb "${array[4]}" "$(cat ../oracles/${array[5]}.txt)")
	# TODO: Add test result to HTML
	# TODO: Close row in HTML
done

# TODO: Close HTML tags
# TODO: Create test report file ./reports/testReport.html
# TODO: Write HTML to ./reports/testReport.html
# TODO: Open ./reports/testReport.html in browser
