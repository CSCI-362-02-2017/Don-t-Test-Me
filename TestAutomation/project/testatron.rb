# Team Name: 		Don't Test Me
# class 				Testatron
# Description:	A superclass for test executables that assigns the parameters and expect of the test
#								as well as printing output for runAllTest.sh to retrieve.				

class Testatron
	@argc	= nil
	@params = nil
	@expect = nil
	@result = nil
		
	# Method: 			initialize(<int> argc)
	# Description:	Retrieves parameters from ARGV and verifies the parameter count using argc.
	# Usage:				From the subclass, call super(<expected_argument_count>) at the beginning of the initializer.
	def initialize(argc)
		@argc = argc
		fetch_params
	end
  
	# Method:				run(result)
	#	Description:	Returns the result of the test, either "Pass" or "Fail" for runAllTest.sh to retrieve.
	# Usage:				From the subclass, call super(<resulting_expression>) at the end of the run method.
	# Exceptions:		The result of the test is not a boolean value
	def run(result)
		raise 'Invalid Test Result' if [TrueClass, FalseClass].exclude?(result.class)
		puts(result ? 'Pass' : 'Fail')
	end
  
	private
	
	# Method:				fetch_params
	# Description:	Retrieves parameters and the expect value from ARGV.
	# Exceptions:		The count of the supplied parameters does not match the test's argc.
	#								The count of the supplied parameters is 0.
	#								No expectation is supplied
	def fetch_params
		if ARGV[0]
			@params = ARGV[0].split(" ")
			raise 'Invalid Argument Count' if @params.count != @argc
		else
			raise 'No parameters supplied to the test'
		end

		if ARGV[1]
			@expect = ARGV[1]
		else
			raise 'No expectation supplied to the test.'
		end
	end
end
