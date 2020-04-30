class RemoveOsFromPatient < ActiveRecord::Migration[6.0]
  def change

    remove_column :patients, :os, :string
  end
end
