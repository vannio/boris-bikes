
require_relative 'bike'


class DockingStation

  attr_reader :bike

  def release_bike
    # Bike.new
    unless @bike
      raise "Nothing to release"
    else
      @bike
    end
  end

  def dock bike
    @bike = bike
  end

  # def bike
  #   @bike
  # end

end
