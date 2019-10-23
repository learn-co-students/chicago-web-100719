require_relative '../config/environment'

describe "Car class" do
  before(:each) do
    @car = Car.new("Ford Focus")
  end
  it "creates a Car object" do
    puts "It creates a car"
    # @car = Car.new
    expect(@car.class).to eq(Car)
  end

  it "has 0 miles" do
    puts "It has 0 miles"
    # @car = Car.new
    expect(@car.miles).to eq(0)
  end

  it "has 100 fuel" do
    # @car = Car.new
    expect(@car.fuel).to eq(100)
  end

  it "has a model" do
    expect(@car.model).to eq("Ford Focus")
  end
end

describe "Car#drive" do
  before(:each) do
    @car = Car.new("Dodge Stratus")
  end

  it "should respond to the drive method" do
    expect(@car).to respond_to(:drive).with(1)
  end

  it "should increase miles by the input given" do
    @car.drive(20)
    expect(@car.miles).to eq(20)
    @car.drive(20)
    expect(@car.miles).to eq(40)
  end

  it "should decrease fuel proportional to distance driven" do
    @car.drive(20)
    expect(@car.fuel).to eq(98)
    @car.drive(20)
    expect(@car.fuel).to eq(96)
  end

  it "should throw an error if there is not enough fuel" do
    expect{@car.drive(10000000)}.to raise_error(ArgumentError)
  end
end
