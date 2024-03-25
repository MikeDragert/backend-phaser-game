class CreateAchievements < ActiveRecord::Migration[7.1]
  def change
    create_table :achievements, id: :serial do |t|
      t.string "title"
      t.string "description"
    end
  end
end