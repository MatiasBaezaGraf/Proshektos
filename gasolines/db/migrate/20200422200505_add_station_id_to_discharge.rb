class AddStationIdToDischarge < ActiveRecord::Migration[6.0]
  def change
    add_reference :discharges, :station, null: true, foreign_key: true
  end
end
