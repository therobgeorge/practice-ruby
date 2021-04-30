module Wheels
  def initialize
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

class Car
  include Wheels

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  include Wheels

  def ring_bell
    puts "Ring ring!"
  end
end


car = Car.new
bike = Bike.new

bike.ring_bell
p car.accelerate
# p car.speed
p bike.accelerate
# p bike.speed