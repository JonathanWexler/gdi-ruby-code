class Pizza
	attr_accessor :toppings
	
	def initialize
		@toppings = ['veg', 'extra cheese', 'peppers']
	end

	def is_eaten?
		@toppings.empty?
	end


end