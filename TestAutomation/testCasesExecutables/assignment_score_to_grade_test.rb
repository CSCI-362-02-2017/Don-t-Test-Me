#=======================================================#
# Team Name:    Don't Test Me                           #
# Team Members: Kenneth Dela Cruz, Kyle Glick, Sam Word #
#=======================================================#

# Require Testing Class
require_relative '../project/testatron'

# Require Necessary Canvas Classes
require_relative '../project/assignment'

# Require Necessary Libraries
require 'json'

class AssignmentScoreToGradeTest < Testatron
  
	def initialize
		super(2)
	end

	def run
		assignment = Assignment.new()
		super(true)
	end
end

AssignmentScoreToGradeTest.new().run()
