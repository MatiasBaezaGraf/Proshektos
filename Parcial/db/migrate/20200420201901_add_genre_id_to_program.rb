class AddGenreIdToProgram < ActiveRecord::Migration[6.0]
  def change
    add_reference :programs, :genre, null: true, foreign_key: true
  end
end
