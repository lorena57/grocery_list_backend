class GrocerySerializer
  include FastJsonapi::ObjectSerializer
  attributes :grocery_item, :notes, :market
end
