class AddStructureIdToCars < ActiveRecord::Migration[6.0]
  def change
    add_reference :cars, :structure, null: true, foreign_key: true
  end
end
