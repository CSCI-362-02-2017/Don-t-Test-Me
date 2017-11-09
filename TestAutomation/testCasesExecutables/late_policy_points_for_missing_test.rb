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

class LatePolicyPointsForMissingTest < Testatron
  
	def initialize
		super(2)
	end

	def run

		super()
	end
end

LatePolicyPointsForMissingTest.new().run()