class Airport

	def initialize
		@planes = false
	end

	def land(plane)
		@planes = true
	end

	def take_off(plane)
	end


	def full?
		true
	end

	def empty?
		@planes == false
	end

end