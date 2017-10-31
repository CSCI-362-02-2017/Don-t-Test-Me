#=====================================================================#
# Team Name: Don't Test Me                                            #
# Team Members: Kenneth Dela Cruz, Kyle Glick, Sam Word               #
# Run From:  Don-t-Test-Me/TestAutomation as ./scripts/runAllTests.sh #
#=====================================================================#

rm -f ./reports/testReport.html
# TODO: Clear all files from ./temp/

touch ./reports/testReport.html
cat ./scripts/reportHeader.html >> ./reports/testReport.html

# TODO: Loop over files in ./testCases/ with .txt but not .txt.example (not just first 5)
cd testCases/
for f in testCase01.txt testCase02.txt testCase03.txt testCase04.txt testCase05.txt
do
	readarray -t array < $f
        
        IFS=';' read result methodReturn <<< "$(ruby ../testCasesExecutables/${array[5]}.rb "${array[4]}" "$(cat ../oracles/${array[5]}.txt)")"
	
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
	echo "<td>$(cat ../oracles/${array[5]}.txt)</td>" >> ../reports/testReport.html
	echo "<td>${methodReturn}</td>" >> ../reports/testReport.html
	echo "<td>${result}</td></tr>" >> ../reports/testReport.html

done

cd ..
cat ./scripts/reportFooter.html >> ./reports/testReport.html

xdg-open ./reports/testReport.html

