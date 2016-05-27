require_relative 'bike'

class DockingStation

  attr_reader :bikes
  attr_accessor :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def dock(bike)
    fail 'Error: Docking Station Full' if full?
  	@bikes << bike
  end

  def release_bike
    fail 'Error. No bikes available' if empty?
    @bikes.pop if @bikes.last.working?
  end

  private

  def full?
    @bikes.count >= capacity
  end

  def empty?
    @bikes.empty?
  end
end
