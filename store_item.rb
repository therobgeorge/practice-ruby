class Shirt 
  
  attr_accessor :type, :size, :color

  def initialize(shirt_options)
    @type = shirt_options[:type]
    @size = shirt_options[:size]
    @color = shirt_options[:color]
  end
  
  def print_info
    puts "We have a #{type} shirt in a size #{size} and it is #{black}."
  end
end

class Food < Shirt
  attr_accessor :shelf_life
  
  def initialize(shirt_options)
    super
    @shelf_life = shirt_options[shelf_life]
  end

crew_shirt = Shirt.new({:type => "crew neck", :size => "M", :color => "Black"})
puts crew_shirt.type
puts crew_shirt.size
puts crew_shirt.color
crew_shirt.size = "L"
puts crew_shirt.size
