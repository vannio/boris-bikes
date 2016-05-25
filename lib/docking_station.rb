
require_relative 'bike'


class DockingStation

  attr_reader :bike

  def release_bike
    unless @bike
      raise "Nothing to release"
    end
    @bike
  end

  def dock bike
    if @bike
      raise "Docking station is full"
    end
    @bike = bike
  end

end
