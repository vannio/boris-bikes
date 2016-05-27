class Garage

  def fix_bikes(bikes)
    bikes.map do |bike|
      bike.fix_bike
    end
  end
end
