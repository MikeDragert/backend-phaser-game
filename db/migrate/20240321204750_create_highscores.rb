class CreateHighscores < ActiveRecord::Migration[7.1]
  def change
    create_table :highscores, id: :serial do |t|
      t.references :player, foreign_key: true
      t.integer "score"
      t.datetime "time"
      t.timestamps
    end
  end
end
