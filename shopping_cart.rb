class Cart
  attr_accessor :items

  def initialize(attributes)
    @items = attributes[:items]
  end
end

class User
  attr_accessor :name, :cart

  def initialize(attributes)
    @name = attributes[:name]
    @cart = Cart.new(items: [])
  end

  def add_item_to_cart(item)
    @cart.items << item
  end
end

class GroceryItem
  attr_accessor :name, :brand

  def initialize(attributes)
    @name = attributes[:name]
    @brand = attributes[:brand]
  end
end

class Register
end




nick = User.new(name: "Nick")

fruit_snack = GroceryItem.new(name: "Fruit Snacks", brand: "Gushers")
soda = GroceryItem.new(name: "Soda", brand: "Coke")

nick.add_item_to_cart(fruit_snack)
nick.add_item_to_cart(soda)

puts nick.inspect






