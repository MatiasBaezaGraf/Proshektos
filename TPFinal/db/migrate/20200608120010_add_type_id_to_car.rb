class AddTypeIdToCar < ActiveRecord::Migration[6.0]
  def change
    add_reference :cars, :type, null: false, foreign_key: true
  end
end
