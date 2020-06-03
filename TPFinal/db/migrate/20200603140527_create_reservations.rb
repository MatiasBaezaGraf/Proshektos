class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.date :from
      t.date :to
      t.integer :price

      t.timestamps
    end
  end
end
