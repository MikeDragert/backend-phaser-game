class CreatePlayerItems < ActiveRecord::Migration[7.1]
  def change
    create_table :player_items, id: :serial do |t|
      t.references :player, foreign_key: true
      t.references :item, foreign_key: true
      t.references :save, foreign_key: true
      t.integer "container_item_id"
      t.integer "location_x"
      t.integer "location_y"
      t.integer "map_id"
      t.timestamps
    end
  end
end
