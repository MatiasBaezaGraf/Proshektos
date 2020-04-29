class CreateTrucks < ActiveRecord::Migration[6.0]
  def change
    create_table :trucks do |t|
      t.string :patent
      t.string :description
      t.integer :max_liters

      t.timestamps
    end
  end
end
