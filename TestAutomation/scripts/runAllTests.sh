# RUN ME FROM Don-t-Test-Me/TestAutomation as ./scripts/runAllScripts.sh

# TEST SCRIPT
# readarray -t array < ./testCases/testCase0.txt.example
# ruby ./testCasesExecutables/${array[5]}.rb.example ${array[4]}





# REAL SCRIPT HERE

# Delete ./reports/testReport.html (Not testReport.html.example)

# Clear all files from ./temp/

# Write some basic HTML to hold the test information

# Loop over files in ./testCases/ with .txt but not .txt.example
	# Add new row to HTML	
	# Read File as array
	# Add test number to HTML (line 1 of file)
	# Add test description to HTML (line 2 of file)
	# Add test model to HTML (line 3 of file)
	# Add test method to HTML (line 4 of file)
	# Add test params to HTML (line 5 of file)
	# Get Oracle/Executable Filename (line 6 of file)
	# Read oracle value from ./oracles/<filename>Oracle.txt
	# Execute ruby script and pass params and oracle value, assign result
	# <TEST RUNS>
	# Compare result to Oracle
	# Add pass/fail to HTML
	# Close row in HTML

# Close HTML tags

# Create test report file ./reports/testReport.html

# Write HTML to ./reports/testReport.html

# Open ./reports/testReport.html in browser
