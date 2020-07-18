class GrocerySerializer
  include FastJsonapi::ObjectSerializer
  attributes :grocery_item, :qty, :notes, :market
end
