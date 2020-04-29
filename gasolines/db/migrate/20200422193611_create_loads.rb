class CreateLoads < ActiveRecord::Migration[6.0]
  def change
    create_table :loads do |t|
      t.integer :liters
      t.datetime :date
      t.integer :liter_amount

      t.timestamps
    end
  end
end
