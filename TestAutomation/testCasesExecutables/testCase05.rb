# Team Name:				Don't Test Me
# Test Number:			5
# Test Description:	Converts a score of 100 to a grade when the grading scale is [["Pass",50],["Fail",0]]
# Test Model:				Course
# Test Method:			#score_to_grade
# Test ARGC:				2
# Test Params:			100 [["Pass",0.50],["Fail",0.0]]
# Test Expect:			Pass

# Require Testing Class
require_relative '../project/testatron'

# Require Necessary Canvas Classes
require_relative '../project/course'
require_relative '../project/grading_standard'

# Require Necessary Libraries
require 'json'

class TestCase5 < Testatron
  
	def initialize
		super(2)
	end

	def run
		course = Course.new()
		standard = GradingStandard.new()
		standard.data = JSON.parse(@params[1])
		course.grading_standard = standard
		
		super(course.score_to_grade(@params[0].to_i))
	end
end

TestCase5.new().run()

