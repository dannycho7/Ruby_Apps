def blocks
	puts "This is line 1"
	yield 2
	puts "This should be line 3"
	yield 5.12412
end
blocks{|x| puts "x has a value of #{x}"}