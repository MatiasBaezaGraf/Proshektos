class RemoveKilometersLastFromCars < ActiveRecord::Migration[6.0]
  def change
    remove_column :cars, :kilometers_last, :integer
  end
end
