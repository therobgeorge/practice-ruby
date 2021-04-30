require './store_item.rb'
require './clothing.rb'
require './food.rb'
require './pants.rb'
require './shirt.rb'

crew_shirt = Shirt.new({type: "shirt", style: "crew neck", size:  "M", color:  "Black"})
pants = Pants.new(type: "pants", style: "jeans", color: "Dark Blue", waist: 30, inseam: 32)
puts crew_shirt.type
puts crew_shirt.size
puts crew_shirt.color
crew_shirt.size = "L"
puts crew_shirt.size
candy = Food.new({type: "Snickers", shelf_life: "Six Months"})
p candy.shelf_life
puts pants.type
pants.print_info
puts pants.color
crew_shirt.print_info
crew_shirt.return_policy
pants.return_policy