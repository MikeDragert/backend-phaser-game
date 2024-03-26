class CreatePlayers < ActiveRecord::Migration[7.1]
  def change
    create_table :players, id: :serial do |t|
      t.string "username", unique: true
      t.string "password"
      t.string "email", unique: true
      t.integer "save_point"
      t.timestamps
    end

    add_index :players, :email, unique: true
  end
end