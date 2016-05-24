require_relative "bike"

class DockingStation

  attr_reader :bike

  def dock(bike)
  	fail "There are too many bikes - unable to dock" if @bike
    @bike = bike
  end

  def release_bike
    fail "No bikes available :(" unless @bike
    @bike
  end


end
