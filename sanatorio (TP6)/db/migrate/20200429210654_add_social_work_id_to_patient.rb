class AddSocialWorkIdToPatient < ActiveRecord::Migration[6.0]
  def change
    add_reference :patients, :social_work, null: true, foreign_key: true
  end
end
