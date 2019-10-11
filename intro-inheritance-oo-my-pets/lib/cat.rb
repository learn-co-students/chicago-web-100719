class Cat < Animal
  attr_accessor :num_lives
  def initialize(name)
    super
    @num_lives = 9
  end

  # def speak this method will break
  #   super
  # end

  def introduce_yourself
    puts "I am a #{speak}"
  end

  # def speak
  #   super
  # end


end
