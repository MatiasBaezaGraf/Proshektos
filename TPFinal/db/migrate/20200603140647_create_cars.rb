class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :patent
      t.string :brand
      t.string :model
      t.string :fuel_type
      t.integer :kilometers_last
      t.integer :service
      t.integer :price_day

      t.timestamps
    end
  end
end
