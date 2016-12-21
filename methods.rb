class Methods
	def optionalPara(x1 = "No", x2 = "Need")
		puts "#{x1} #{x2} for parameters"
	end
	def variablePara(*var)
		puts "there are #{var.length} parameters"
		var.each do |x|
			puts "#{x}"
		end
	end
end

obj1 = Methods.new 
obj1.optionalPara
obj1.optionalPara "Yeah no"
obj1.variablePara "llol","sadasd","asdasdasd",2