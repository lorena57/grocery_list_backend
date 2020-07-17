class RemoveMarketIdFromGroceryTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :groceries, :market_id, :integer
  end
end
