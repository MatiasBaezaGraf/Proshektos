class AddClassificationIdToCars < ActiveRecord::Migration[6.0]
  def change
    add_reference :cars, :classification, null: false, foreign_key: true
  end
end
