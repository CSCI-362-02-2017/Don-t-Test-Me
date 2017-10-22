class Testatron
	@argc	= nil
	@params = nil
	@expect = nil
	@result = nil

	def initialize(argc)
		@argc = argc
		fetch_params
	end
  
	def run(result)
		raise 'Invalid Test Result' if [TrueClass, FalseClass].exclude?(result.class)
		puts(result ? 'Pass' : 'Fail')
	end
  
	private

	def fetch_params
		if ARGV[0]
			@params = ARGV[0].split(" ")
			raise 'Invalid Argument Count' if @params.count != @argc
		else
			raise 'No parameters supplied to the test'
		end

		if ARGV[1]
			@expect = ARGV[1]
		else
			raise 'No result supplied to the test.'
		end
	end
end
