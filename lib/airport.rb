require 'weather_conditions'
require 'plane'

class Airport

	include WeatherConditions

	def initialize
		@planes = []
		@flying_planes = []
	end

	def land(plane)
		super
		raise 'full' if @planes.count == 6
		plane.land!
		@planes << plane
	end

	def take_off(plane)
		super
		plane.take_off!
		@flying_planes << @planes.pop
	end

	def full?
		@planes.count == 6
	end

	def empty?
		@planes.count == 0
	end

	def planes
		@planes
	end

	def flying_planes
		@flying_planes
	end

end