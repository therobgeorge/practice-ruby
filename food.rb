require './store_item.rb'

class Food < Product
  attr_accessor :shelf_life
  
  def initialize(product_options)
    super
    @shelf_life = product_options[:shelf_life]
  end
end