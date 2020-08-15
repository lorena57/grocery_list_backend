class GrocerySerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :grocery_item, :notes, :qty

  belongs_to :market
end
