class Airport

	def initialize
		@planes = []
	end

	def land(plane)
		raise 'full' if @planes.count == 10
		@planes << plane
	end

	def take_off(plane)
		@planes.pop
	end


	def full?
		@planes.count == 10
	end

	def empty?
		@planes.count == 0
	end

end