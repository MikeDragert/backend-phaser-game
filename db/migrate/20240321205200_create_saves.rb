class CreateSaves < ActiveRecord::Migration[7.1]
  def change
    create_table :saves do |t|
      t.integer :player_id
      t.integer :save_point
      t.boolean :current

      t.timestamps
    end
  end
end
