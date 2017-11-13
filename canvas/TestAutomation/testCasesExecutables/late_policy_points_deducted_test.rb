#=======================================================#
# Team Name:    Don't Test Me                           #
# Team Members: Kenneth Dela Cruz, Kyle Glick, Sam Word #
#=======================================================#

# Require Testing Class
require_relative '../project/testatron'

class LatePolicyPointsDeductedTest < Testatron
  
	def initialize
		super(8)
	end

	def run
		policy = LatePolicy.create(late_submission_deduction: @params[0].to_i,
															 late_submission_interval: @params[1].to_sym,
															 late_submission_deduction_enabled: @params[2] == "true")

		super(policy.points_deducted(score: @params[3].to_i,
		 							 possible: eval(@params[4]),
		 							 late_for: @params[5].to_i.send(@params[6]),
		 							 grading_type: @params[7]).to_s)
	end

end

LatePolicyPointsDeductedTest.new().run()
