class Item < ApplicationRecord
  self.inheritance_column = :_type_disabled

  has_many :player_items

  def self.items_by_name_type (item_name, item_type)
    Item.where("name = ? and item_type = ?", item_name, item_type).first
  end
end
