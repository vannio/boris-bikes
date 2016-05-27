class Van

  attr_reader :cargo

  def initialize
    @cargo = []
  end

  def load_bikes(bikes)
    @cargo = bikes
  end

  # def deliver_bikes(destination)
    # @cargo
  # end
end
