class Van
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def load_bikes(bikes)
    @bikes = bikes
  end

  def unload_bikes
    result = @bikes.clone
    @bikes = []
    result
  end
end
