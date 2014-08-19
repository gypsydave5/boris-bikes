class DockingStation

	def initialize
		@bikes = []
	end

	def has_bikes?
		@bikes.any?
	end

	def dock_bike(bike)
		@bikes << bike
	end

	def release_bike
		bike = @bikes.select(&:working?).pop
		@bikes.delete(bike)
	end

	def available?
		@bikes.any?(&:working?)
	end

	def dump_broken_bikes
		broken_bikes = @bikes.reject(&:working?)
		@bikes - broken_bikes
		broken_bikes
	end

end
