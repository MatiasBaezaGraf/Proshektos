class AddSpecialityIdToMedic < ActiveRecord::Migration[6.0]
  def change
    add_reference :medics, :speciality, null: true, foreign_key: true
  end
end
