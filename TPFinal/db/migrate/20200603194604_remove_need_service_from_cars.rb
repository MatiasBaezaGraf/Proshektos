class RemoveNeedServiceFromCars < ActiveRecord::Migration[6.0]
  def change
    remove_column :cars, :need_service, :boolean
  end
end
