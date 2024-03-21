class CreatePlayers < ActiveRecord::Migration[7.1]
  def change
    create_table :players do |t|
      t.string :username
      t.string :email
      t.integer :save_point

      t.timestamps
    end
  end
end
