class RemoveDateFromTurn < ActiveRecord::Migration[6.0]
  def change

    remove_column :turns, :date, :date
  end
end
