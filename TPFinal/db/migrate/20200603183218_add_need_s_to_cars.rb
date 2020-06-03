class AddNeedSToCars < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :need_s, :string
  end
end
