class Car
  attr_reader :miles, :fuel, :model
  def initialize(model)
    @model = model
    @miles = 0
    @fuel = 100
  end

  def drive(distance)
    if @fuel - distance * 0.1 < 0
      raise ArgumentError
    end
    @miles += distance
    @fuel -= distance * 0.1
  end
end
