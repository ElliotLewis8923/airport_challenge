module WeatherConditions

	def initialize
		@stormy = nil
	end

	def stormy?
		@stormy
	end


	def god_mode!
		if rand(6) > 4 then @stormy = true
		else @stormy = false
		end
	end

	def take_off(plane)
		raise 'Storm!' if stormy? == true
	end

	def land(plane)
		raise 'Storm' if stormy? == true
	end

	
	
	
end