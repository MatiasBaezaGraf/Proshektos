class CreateStations < ActiveRecord::Migration[6.0]
  def change
    create_table :stations do |t|
      t.string :adress
      t.string :flag
      t.integer :max_liters

      t.timestamps
    end
  end
end
