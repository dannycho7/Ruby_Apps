class Conditional
	def response(x)
		if x>2
			puts "x is greater than 2, the value is: #{x}"
		elsif x == 0 
			puts "x is #{x}"
		end
	end
	def cases(x)
		case x
		when (0..2)
			puts "x is in the range [0,2]"
		when (3..5)
			puts "x is in the range [3,5]"
		when (5...10)
			puts "x is in the range [5,10). it is #{x}"
		else 
			puts "x is less than 0"
		end
	end
end

cond1 = Conditional.new()
cond1.cases(-2)
cond1.cases(1)
cond1.cases(4)
cond1.cases(6)