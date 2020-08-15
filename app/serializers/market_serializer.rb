class MarketSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name
  
  has_many :groceries

end
