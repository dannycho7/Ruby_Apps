obj1 = Array.new(10) { |i| i = i*2 } #array of multiples of 2 starting from 0 and ending at 18
obj2 = Array[1,2,4,5]
obj3 = obj1 + obj2

@biggest = 0
obj3.each do |x|
	if(x > @biggest)
		@biggest = x
	end
end
print "#{@biggest}\n"