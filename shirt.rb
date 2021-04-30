require './store_item.rb'
require './clothing.rb'

class Shirt < Product
  include Clothing
  attr_accessor :size, :style

  def initialize(product_options)
    super
    @size = product_options[:size] 
  end
end