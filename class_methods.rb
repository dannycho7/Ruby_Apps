class Method
	def Method.m1(x)
		puts "it works? #{x}"
	end
end

class Other
	def m2
		Method.m1("OK")
	end
end

obj1 = Other.new
obj1.m2