class AddFuelIdToCar < ActiveRecord::Migration[6.0]
  def change
    add_reference :cars, :fuel, null: false, foreign_key: true
  end
end
