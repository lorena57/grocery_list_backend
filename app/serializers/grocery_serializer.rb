class GrocerySerializer
  include FastJsonapi::ObjectSerializer
  
  attributes :grocery_item, :qty, :notes, :market_id, :market

  # belongs_to :market
end
