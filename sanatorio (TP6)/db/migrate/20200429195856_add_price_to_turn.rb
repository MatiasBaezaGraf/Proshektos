class AddPriceToTurn < ActiveRecord::Migration[6.0]
  def change
    add_column :turns, :price, :float
  end
end
