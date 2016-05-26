require_relative 'bike'

class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end 

  def full?
    @bikes.count >= 20
  end

  def dock(bike)
    	#docked? == true
    fail 'Error: Docking Station Full' if full?
  	@bikes << bike
  end

  def release_bike
    	#Bike.new if empty_bikes == false
    fail 'Error. No bikes available' if @bikes.empty?
    @bikes.pop
  end



  #def empty_bikes
  #	return 'Error. No bikes available'
  #end

end
