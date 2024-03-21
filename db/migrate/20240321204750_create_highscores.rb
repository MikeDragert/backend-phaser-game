class CreateHighscores < ActiveRecord::Migration[7.1]
  def change
    create_table :highscores do |t|
      t.integer :player_id
      t.integer :score
      t.datetime :time

      t.timestamps
    end
  end
end
