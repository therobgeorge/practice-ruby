require './store_item.rb'
require './clothing.rb'

class Pants < Product
  include Clothing
  attr_accessor :waist, :inseam

  def intiitalize(product_options)
    super
    @waist = product_options[:waist]
    @inseam = product_options[:inseam]  
  end
end