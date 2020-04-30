class AddPatientIdToTurn < ActiveRecord::Migration[6.0]
  def change
    add_reference :turns, :patient, null: true, foreign_key: true
  end
end
