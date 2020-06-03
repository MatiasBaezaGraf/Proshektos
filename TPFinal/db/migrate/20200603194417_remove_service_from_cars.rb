class RemoveServiceFromCars < ActiveRecord::Migration[6.0]
  def change
    remove_column :cars, :service, :integer
  end
end
