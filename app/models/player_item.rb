class PlayerItem < ApplicationRecord
  belongs_to :player_save
  belongs_to :item

  scope :item_join, ->{ 
    joins("INNER JOIN items
           ON items.id = player_items.item_id") 
  }

  def self.player_item_item
    item_join.select('player_items.*, items.name as item_name, items.item_type as item_type')
  end

  def self.player_item_item_for_save(player_save_id)
    item_join.select('player_items.*, items.name as item_name, items.item_type as item_type').where(["player_save_id = ?", player_save_id])
  end

  

end
