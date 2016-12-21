class StringTester
	
=begin 
	def printChars1
		@word1.each_char { |x|
			puts x
		}
	end
=end
	@word1 = 1
	def printChars2
		puts @word1
		"five"	.split("").each do |x|
			puts x
		end
	end
end

StringTester.printChars2 
