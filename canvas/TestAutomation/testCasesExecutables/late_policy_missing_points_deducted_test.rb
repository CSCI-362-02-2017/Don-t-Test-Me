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
		super(2)
	end

	def run
		late_policy = LatePolicy.new()
		super(true)
	end
end

LatePolicyMissingPointsDeductedTest.new().run()
