require_relative 'bike'

class DockingStation
    
    def initialize
        @bikes= []
    end

  def release_bike
    raise "sorry, no bikes" unless @bikes.empty?
    @bikes.pop
  end

  def docking_bike(bike)
    raise "sorry, dock is full" if @bikes.count >= 20
    @bikes << bike
  end

end
