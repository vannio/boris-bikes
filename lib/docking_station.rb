require_relative 'bike'

class DockingStation

  attr_reader :bike

  def release_bike
    Bike.new
  end

  def docking_bike(bike)
    @bike= bike
  end

  def no_bikes
    raise "sorry, no bikes"
  end

  def bike
    @bike
  end
end
