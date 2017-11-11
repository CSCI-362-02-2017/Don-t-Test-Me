#=======================================================#
# Team Name:    Don't Test Me                           #
# Team Members: Kenneth Dela Cruz, Kyle Glick, Sam Word #
#=======================================================#

# Require Testing Class
require_relative '../project/testatron'

class CourseScoreToGradeTest < Testatron
  
	def initialize
		Course.destroy_all
		GradingStandard.destroy_all
		super(2)
	end

	def run
		course = Course.create()
		standard = course.grading_standards.create!(data: JSON.parse(@params[1]))
		course.update_attribute(:grading_standard_id, standard)
		
		super(course.score_to_grade(@params[0].to_i))
	end
end

CourseScoreToGradeTest.new().run()
