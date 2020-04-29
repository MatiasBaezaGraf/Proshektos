class CreateDischarges < ActiveRecord::Migration[6.0]
  def change
    create_table :discharges do |t|
      t.integer :liters
      t.datetime :date

      t.timestamps
    end
  end
end
