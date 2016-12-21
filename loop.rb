class Loop
	def between(x,y)
		while x < y do
			puts "#{x}"
			x+=1
		end
	end
	def diffbetween(x,y)
		begin
			puts "#{x}"
			x += 1
		end while x < y
	end
	def forbetween(x,y)
		for i in x..y
			puts "#{i} is in between #{x} and #{y}"
			i+=1
		end
	end
	def testingThen
		for i in 0..5
		   if i > 2
		     break
		   end
		   puts "Value of local variable is #{i}"
		   i+=1
		end
	end
end

example = Loop.new
example.testingThen