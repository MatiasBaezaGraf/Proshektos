class RemoveSpecialityFromMedic < ActiveRecord::Migration[6.0]
  def change

    remove_column :medics, :speciality, :string
  end
end
