class CreateAccessoriesCars < ActiveRecord::Migration[6.0]
  def change
    create_table :accessories_cars do |t|
      t.references :car, null: false, foreign_key: true
      t.references :accessory, null: false, foreign_key: true

      t.timestamps
    end
  end
end
