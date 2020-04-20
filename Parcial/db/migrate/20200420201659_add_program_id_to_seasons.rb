class AddProgramIdToSeasons < ActiveRecord::Migration[6.0]
  def change
    add_reference :seasons, :program, null: true, foreign_key: true
  end
end
