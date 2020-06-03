class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.date :from
      t.date :to

      t.timestamps
    end
  end
end
