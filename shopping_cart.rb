class Register

  def self.get_total_by(cart)
    total_price = 0
    cart.items.map do |item|
      if item.weight
        if item.name == "Apple"
          weight_price = (0.99 * item.weight)
        elsif item.name == "Watermelon"
          weight_price = (1.99 * item.weight)
        end
        total_price += weight_price
      else
        total_price += item.base_price
      end
    end
    puts total_price.round(2)
  end
end

class Cart
  attr_accessor :items

  def initialize(attributes)
    @items = attributes[:items]
  end

end

class Shopper
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
  attr_accessor :name, :brand, :weight, :base_price

  def initialize(attributes)
    @name = attributes[:name]
    @brand = attributes[:brand]
    @weight = attributes[:weight]
    @base_price = attributes[:base_price]
  end
end


# Create a user
nick = Shopper.new(name: "Nick")

# Create some grocery items
cereal = GroceryItem.new(name: "Cereal", brand: " Special K", base_price: 3.99)
watermelon = GroceryItem.new(name: "Watermelon", weight: 15)
beer = GroceryItem.new(name: "Beer", brand: "Blue Moon", base_price: 9.99)
apple = GroceryItem.new(name: "Apple", brand: "Macintosh", weight: 1)

# Add items to user's cart
nick.add_item_to_cart(beer)
nick.add_item_to_cart(apple)
nick.add_item_to_cart(watermelon)
nick.add_item_to_cart(cereal)

# Get the total from a users cart
Register.get_total_by(nick.cart)
