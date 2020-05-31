class RemoveBrandFromCars < ActiveRecord::Migration[6.0]
  def change

    remove_column :cars, :brand, :string
  end
end
