class CreateSaves < ActiveRecord::Migration[7.1]
  def change
    create_table :saves, id: :serial do |t|
      t.references :player, foreign_key: true
      t.integer "save_point"
      t.boolean "current"
      t.timestamps
    end
  end
end