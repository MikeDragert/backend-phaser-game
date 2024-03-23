class CreatePlayerAchievements < ActiveRecord::Migration[7.1]
  def change
    create_table :player_achievements, id: :serial do |t|
      t.references :achievement, foreign_key: true
      t.references :player, foreign_key: true
      t.datetime "achieved_at"
      t.datetime "created_at", null: false
    end
  end
end
