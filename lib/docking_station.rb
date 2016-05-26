require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes= []
  end

  def release_bike
    raise "sorry, no bikes" unless empty?
    @bikes.pop
  end

  def docking_bike(bike)
    raise "sorry, dock is full" if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.size == 20 ? true : false
  end

  def empty?
    @bikes.size == 0 ? true : false
  end

end
