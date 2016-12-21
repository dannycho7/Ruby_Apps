def blocks
	puts "This is line 1"
	yield 2
	puts "This should be line 3"
	yield 5.12412
	print "\n"
end
def blocks2
	puts "This is line 1"
	yield 1,2,4,12,112412.4124 
	puts "This should still be line 7"
	yield 1
end
BEGIN{
	puts "Testing out Yield!" #cannot use any methods here
}
END{
	puts "Program is ending now" #important to note that you cannot call any functions here, since program has ended
}
blocks{|x| puts "x has a value of #{x}"}
blocks2{|*x| for i in 0..x.length do puts "values are #{x[i]} " end}
