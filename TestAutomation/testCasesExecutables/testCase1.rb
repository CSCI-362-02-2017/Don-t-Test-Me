if ARGV[0].nil?
	puts "No Arguments Provided."
else
	ARGV[0].split(' ').each do |arg|
		puts "Arg = " + arg
	end
end
