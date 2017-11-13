#=======================================================#
# Team Name:    Don't Test Me                           #
# Team Members: Kenneth Dela Cruz, Kyle Glick, Sam Word #
#=======================================================#

# Require Testing Class
require_relative '../project/testatron'

class LatePolicyPointsDeductedTest < Testatron
  
	def initialize
		super(7)
	end

	def run
		policy = LatePolicy.create(late_submission_deduction: @params[0].to_i,
															 late_submission_interval: @params[1])
		super(policy.points_deducted(score: @params[2].to_i,
		 							 possible: eval(@params[3]), 
		 							 late_for: @params[4].to_i.send(@params[5]),
		 							 grading_type: @params[6]).to_s)
	end

end

LatePolicyPointsDeductedTest.new().run()
