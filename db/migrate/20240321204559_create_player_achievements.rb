class CreatePlayerAchievements < ActiveRecord::Migration[7.1]
  def change
    create_table :player_achievements do |t|
      t.integer :achievement_id
      t.integer :player_id
      t.datetime :achieved_at

      t.timestamps
    end
  end
end
