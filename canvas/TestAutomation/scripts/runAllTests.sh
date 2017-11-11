#========================================================================#
# Team Name:    Don't Test Me                                            #
# Team Members: Kenneth Dela Cruz, Kyle Glick, Sam Word                  #
# Run From:     Don-t-Test-Me/TestAutomation as ./scripts/runAllTests.sh #
#========================================================================#

# Set $GEM_HOME for Rails Runner
export GEM_HOME=~/.gems

# Delete Old Report
rm -f ./reports/testReport.html

# Create New Report
touch ./reports/testReport.html
cat ./scripts/reportHeader.html >> ./reports/testReport.html

# TODO: Loop over files in ./testCases/ with .txt but not .txt.example (not just first 5)
cd testCases/
for f in testCase01.txt testCase02.txt testCase03.txt testCase04.txt testCase05.txt
do
	readarray -t array < $f
        
        IFS=';' read result methodReturn <<< "$($GEM_HOME/bin/rails r TestAutomation/testCasesExecutables/${array[6]}.rb "${array[4]}" "${array[5]}")"
	
	if [ $result == "Pass" ]; then
		class="success"

	else
		class="danger"
	fi

	echo "<tr class=\"${class}\"><td>${array[0]}</td>" >> ../reports/testReport.html
	echo "<td>${array[2]}#${array[3]}</td>" >> ../reports/testReport.html
	echo "<td>${array[1]}</td>" >> ../reports/testReport.html
	echo "<td>${array[4]}</td>" >> ../reports/testReport.html
	# Use these once we can capture the return value
	echo "<td>${array[5]}</td>" >> ../reports/testReport.html
	echo "<td>${methodReturn}</td>" >> ../reports/testReport.html
	echo "<td>${result}</td></tr>" >> ../reports/testReport.html

done

cd ..
cat ./scripts/reportFooter.html >> ./reports/testReport.html

xdg-open ./reports/testReport.html

