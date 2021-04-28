# shirt1 = {:type => "crew neck", :size => "M", :color => "Black"}
# shirt2 = {type: "hoodie", size: "S", color: "Green"}
# shirt3 = {type: "western", size: "L", color: "blue"}


class Shirt 
  
  attr_accessor :type, :size, :color

  def initialize(type, size, color)
    @type = type
    @size = size
    @color = color    
  end
  # def type
  #   @type    
  # end
  # def size
  #   @size
  # end
  # def color
  #   @color
  # end
  # def type=(input_type)
  #   @type = input_type
  # end
  # def size=(input_size)
  #   @size = input_size    
  # end
  # def color=(input_color)
  #   @color = input color
  # end
end

crew_shirt = Shirt.new("crew neck", "M", "Black")
puts crew_shirt.type
puts crew_shirt.size
puts crew_shirt.color
crew_shirt.size = "L"
puts crew_shirt.size
