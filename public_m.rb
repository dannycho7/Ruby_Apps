class User
	WIDTH = 1
	HEIGHT = 2
	def initialize(w,h)
		@width = w
		@height = h
	end

	def self.print
		puts "width is #{WIDTH} and height is #{HEIGHT}"
	end
end

User.print
