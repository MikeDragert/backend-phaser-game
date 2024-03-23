class PlayerItem < ApplicationRecord
  # belongs_to :save
  belongs_to :item

  scope :item_join, ->{ 
    joins("INNER JOIN items
           ON items.id = player_items.item_id") 
  }

  # @player_item_item = PlayerItem.player_item_item

  def self.player_item_item
    item_join.select('player_items.*, items.name as item_name, items.type as item_type')
  end

end
