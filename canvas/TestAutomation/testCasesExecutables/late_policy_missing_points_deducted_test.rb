#=======================================================#
# Team Name:    Don't Test Me                           #
# Team Members: Kenneth Dela Cruz, Kyle Glick, Sam Word #
#=======================================================#

# Require Testing Class
require_relative '../project/testatron'

class LatePolicyMissingPointsDeductedTest < Testatron
  
	def initialize
		super(3)
	end

	def run
		policy = LatePolicy.create(missing_submission_deduction: @params[0])
		
		super(policy.missing_points_deducted(@params[1], @params[2]).to_s)
	end
end

LatePolicyMissingPointsDeductedTest.new().run()
