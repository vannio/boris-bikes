require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    if @bikes.empty?
      raise "Nothing to release"
    end
    @bikes.pop
  end

  def dock bike
    if @bikes.size >= 20
      raise "Docking station is full"
    end
    @bikes << bike
  end

end
