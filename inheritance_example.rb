class Wheels
  def initialize(options_hash)
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Wheels
  attr_accessor :make, :model, :year

  def initialize(options_hash)
    super
    @make = options_hash[:make]
    @model =  options_hash[:model]
    @year = options_hash[:year]
  
  end

    def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Wheels
  attr_accessor :type, :weight, :color
  def initialize(options_hash)
    super
    @type = options_hash[:type]
    @weight = options_hash[:weight]
    @color = options_hash[:color]
  end
    def ring_bell
    puts "Ring ring!"
  end
end


car = Car.new({:make => "Honda", :model => "Fit", :year => 2007})
p car.make
p car.model
p car.year
bike = Bike.new({:type => "Fixed", :weight => "v light", :color => "green"})
p bike.type
p bike.weight
p bike.color
bike.color = "yellow"
p bike.color