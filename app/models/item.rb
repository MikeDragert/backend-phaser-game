class Item < ApplicationRecord
  self.inheritance_column = :_type_disabled

  has_many :player_items
end
