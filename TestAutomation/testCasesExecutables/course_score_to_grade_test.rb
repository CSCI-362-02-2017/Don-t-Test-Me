#=======================================================#
# Team Name:    Don't Test Me                           #
# Team Members: Kenneth Dela Cruz, Kyle Glick, Sam Word #
#=======================================================#

# Require Testing Class
require_relative '../project/testatron'

# Require Necessary Canvas Classes
require_relative '../project/course'
require_relative '../project/grading_standard'

# Require Necessary Libraries
require 'json'

class CourseScoreToGradeTest < Testatron
  
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

CourseScoreToGradeTest.new().run()

