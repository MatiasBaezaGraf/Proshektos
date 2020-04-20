class AddSeasonIdToEpisodes < ActiveRecord::Migration[6.0]
  def change
    add_reference :episodes, :season, null: true, foreign_key: true
  end
end
