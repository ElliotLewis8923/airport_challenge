class Airport

	def initialize
		@planes = false
	end

	def land(plane)
		@planes = true
	end

	def take_off(plane)
		@planes = false
	end


	def full?
		@planes 
	end

	def empty?
		@planes == false
	end

end