class CreateAccesoriesCars < ActiveRecord::Migration[6.0]
  def change
    create_table :accesories_cars do |t|
      t.references :car, null: false, foreign_key: true
      t.references :accesory, null: false, foreign_key: true

      t.timestamps
    end
  end
end
