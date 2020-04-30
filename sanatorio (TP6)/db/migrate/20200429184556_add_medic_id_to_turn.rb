class AddMedicIdToTurn < ActiveRecord::Migration[6.0]
  def change
    add_reference :turns, :medic, null: true, foreign_key: true
  end
end
