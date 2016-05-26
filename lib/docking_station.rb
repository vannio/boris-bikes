require_relative 'bike'

class DockingStation
  attr_reader :bikes, :capacity
  DEFAULT_CAPACITY= 20

  def initialize(capacity= DEFAULT_CAPACITY)
    @bikes= []
    @capacity= capacity
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
    @bikes.size == DEFAULT_CAPACITY ? true : false
  end

  def empty?
    @bikes.size == 0 ? true : false
  end

end
