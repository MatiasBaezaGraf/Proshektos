class RemoveNeedSFromCars < ActiveRecord::Migration[6.0]
  def change
    remove_column :cars, :need_s, :string
  end
end
