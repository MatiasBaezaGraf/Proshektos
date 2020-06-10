class AddKilometersToService < ActiveRecord::Migration[6.0]
  def change
    add_column :services, :kilometers, :integer
  end
end
