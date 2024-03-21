class CreatePlayerItems < ActiveRecord::Migration[7.1]
  def change
    create_table :player_items do |t|
      t.integer :player_id
      t.integer :item_id
      t.integer :save_id
      t.integer :container_item_id
      t.integer :location_x
      t.integer :location_y
      t.integer :map_id

      t.timestamps
    end
  end
end
