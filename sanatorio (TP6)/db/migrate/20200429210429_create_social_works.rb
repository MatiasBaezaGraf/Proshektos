class CreateSocialWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :social_works do |t|
      t.string :name
      t.integer :discount

      t.timestamps
    end
  end
end
