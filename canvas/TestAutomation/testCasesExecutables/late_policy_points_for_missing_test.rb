#=======================================================#
# Team Name:    Don't Test Me                           #
# Team Members: Kenneth Dela Cruz, Kyle Glick, Sam Word #
#=======================================================#

# Require Testing Class
require_relative '../project/testatron'

class LatePolicyPointsForMissingTest < Testatron
  
	def initialize
		super(3)
	end

	def run
		policy = LatePolicy.create(missing_submission_deduction: @params[0].to_i)
		super(policy.points_for_missing(@params[1].to_i, @params[2]).to_s)
	end
end

LatePolicyPointsForMissingTest.new().run()
