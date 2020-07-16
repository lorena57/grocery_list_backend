class CreateGroceries < ActiveRecord::Migration[6.0]
  def change
    create_table :groceries do |t|
      t.string :grocery_item
      t.integer :qty
      t.string :notes
      t.integer :market_id

      t.timestamps
    end
  end
end
