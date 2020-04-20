class AddSerieIdToSeasons < ActiveRecord::Migration[6.0]
  def change
    add_reference :seasons, :serie, null: true, foreign_key: true
  end
end
