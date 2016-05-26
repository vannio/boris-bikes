require_relative 'bike'

class DockingStation
  attr_reader :bikes

  DEFAULT_CAPACITY= 20

  def initialize(capacity= DEFAULT_CAPACITY)
    @bikes= []
    @capacity= capacity
  end

  def release
    raise "Nothing to release" if empty?
    @bikes.pop
  end

  def dock bike
    raise "Docking station is full" if full?
    @bikes << bike
  end

  private

    def full?
      true if @bikes.size >= DEFAULT_CAPACITY
    end

    def empty?
      true if @bikes.empty?
    end

end
