

class Product
  
  attr_accessor :type, :color, :style

  def initialize(product_options)
    @type = product_options[:type]
    @color = product_options[:color]
    @style = product_options[:style] 
  end

  def print_info
    puts "We have a #{style} #{type} in #{color}." 
  end
end
