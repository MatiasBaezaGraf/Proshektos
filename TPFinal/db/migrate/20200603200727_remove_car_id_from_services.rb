class RemoveCarIdFromServices < ActiveRecord::Migration[6.0]
  def change
    remove_column :services, :car_id, :integer
  end
end
