# Require Testing Class
require_relative '../project/testatron'

# Require Necessary Canvas Classes
require_relative '../project/course'
require_relative '../project/grading_standard'

# Require Necessary Libraries
require 'json'

# Model:	Course
# Method:	#score_to_grade
# ARGC:		2
# Params:	25 [["Pass",0.50],["Fail",0.0]]
# Expect:	'Fail'
class TestCase2 < Testatron
  
	def initialize
		super(2)
	end

	def run
		course = Course.new()
		standard = GradingStandard.new()
		standard.data = JSON.parse(@params[1])
		course.grading_standard = standard
		super(course.score_to_grade(@params[0].to_i) == @expect)
	end
end

TestCase2.new().run()

