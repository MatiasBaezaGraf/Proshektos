class AddDateToTurn < ActiveRecord::Migration[6.0]
  def change
    add_column :turns, :date, :datetime
  end
end
