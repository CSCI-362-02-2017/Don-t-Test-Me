#=======================================================#
# Team Name:    Don't Test Me                           #
# Team Members: Kenneth Dela Cruz, Kyle Glick, Sam Word #
#=======================================================#

# Require Testing Class
require_relative '../project/testatron'

# Require Necessary Canvas Classes
require_relative '../project/late_policy'

# Require Necessary Libraries
require 'json'

class LatePolicyMissingPointsDeductedTest < Testatron
  
	def initialize
		super(3)
	end

	def run
		late_policy = LatePolicy.new()
                late_policy.missing_submission_deduction = @params[0]
		super(late_policy.missing_points_deducted(@params[1], @params[2]).to_s)
	end
end

LatePolicyMissingPointsDeductedTest.new().run()
