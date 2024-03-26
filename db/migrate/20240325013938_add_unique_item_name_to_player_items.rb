class AddUniqueItemNameToPlayerItems < ActiveRecord::Migration[7.1]
  def change
    add_column :player_items, :unique_item_name, :string
  end
end
