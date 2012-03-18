class Cart
  attr_accessor :items

  def initialize(attributes)
    @items = attributes[:items]
  end
end

class Cashier

  def self.scan_items(cart)
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
  attr_accessor :name, :brand, :weight

  def initialize(attributes)
    @name = attributes[:name]
    @brand = attributes[:brand]
    @weight = attributes[:weight]
  end
end


# Create a user
nick = User.new(name: "Nick")

# Create some grocery items
beer = GroceryItem.new(name: "Beer", brand: "Blue Moon")
apple = GroceryItem.new(name: "Apple", brand: "Macintosh", weight: 1)

# Add items to user's cart
nick.add_item_to_cart(beer)
nick.add_item_to_cart(apple)

# Give items to the cashier to scan
puts Cashier.scan_items(nick.cart).inspect
