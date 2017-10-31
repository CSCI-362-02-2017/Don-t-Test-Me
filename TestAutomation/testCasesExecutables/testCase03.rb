# Team Name:				Don't Test Me
# Test Number:			3
# Test Description:	Converts a score of 49.999 to a grade when the grading scale is [["Pass",50],["Fail",0]]
# Test Model:				Course
# Test Method:			#score_to_grade
# Test ARGC:				2
# Test Params:			49.999 [["Pass",0.50],["Fail",0.0]]
# Test Expect:			Fail

# Require Testing Class
require_relative '../project/testatron'

# Require Necessary Canvas Classes
require_relative '../project/course'
require_relative '../project/grading_standard'

# Require Necessary Libraries
require 'json'

class TestCase3 < Testatron
  
	def initialize
		super(2)
	end

	def run
		course = Course.new()
		standard = GradingStandard.new()
		standard.data = JSON.parse(@params[1])
		course.grading_standard = standard
		@return = course.score_to_grade(@params[0].to_i)		
		super( @return == @expect)
	end
end

TestCase3.new().run()

