module A
	def a1
		puts "a1"
	end
	def a2
		puts "a2"
	end
end
module B
	def b1
		puts "b1"
	end
	def a2
		puts "b2"
	end
end
class Modded
	include B
	include A
	def self.classMethod
		puts "Ayyy"
	end
	def self.classMethod
		puts "Lets see if this works"
	end
end

Modded.classMethod
obj = Modded.new
obj.a1
obj.a2
obj.b1

