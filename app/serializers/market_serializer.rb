class MarketSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  
  # has_many :groceries

end
