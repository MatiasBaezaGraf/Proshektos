class CreateEpisodes < ActiveRecord::Migration[6.0]
  def change
    create_table :episodes do |t|
      t.integer :number
      t.string :title
      t.datetime :emmited_at
      t.integer :minutes

      t.timestamps
    end
  end
end
