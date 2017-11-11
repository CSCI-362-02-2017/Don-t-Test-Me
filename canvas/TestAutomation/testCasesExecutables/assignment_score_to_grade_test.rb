#=======================================================#
# Team Name:    Don't Test Me                           #
# Team Members: Kenneth Dela Cruz, Kyle Glick, Sam Word #
#=======================================================#

# Require Testing Class
require_relative '../project/testatron'

class AssignmentScoreToGradeTest < Testatron
  
	def initialize
		#Assignment.destroy_all
		super(3)
	end

	def run
		assignment = Assignment.new()
		assignment.grading_type = @params[0]
		assignment.points_possible = @params[1].to_i
		assignment.context = Course.new()
		super(assignment.score_to_grade(@params[2]))
	end
end

AssignmentScoreToGradeTest.new().run()
