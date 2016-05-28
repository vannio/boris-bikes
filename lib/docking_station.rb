require_relative 'bike'
require_relative 'van'

class DockingStation

  attr_reader :bikes, :bikes_broken

  attr_accessor :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @bikes_broken = []
    @capacity = capacity
  end

  def dock(bike)
    fail 'Error: Docking Station Full' if full?
  	if bike.working?
      @bikes << bike
    else
      @bikes_broken << bike
    end
  end

  def release_bike
    fail 'Error. No bikes available' if empty?
    @bikes.pop
  end

  def release_broken_bikes
    @bikes_broken.pop(@bikes_broken.count)
  end

  private

    def full?
      @bikes.count + @bikes_broken.count >= @capacity
    end

    def empty?
      @bikes.empty?
    end

end
