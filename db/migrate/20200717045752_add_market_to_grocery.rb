class AddMarketToGrocery < ActiveRecord::Migration[6.0]
  def change
    add_reference :groceries, :market, null: false, foreign_key: true
  end
end
