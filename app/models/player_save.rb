class PlayerSave < ApplicationRecord
  has_many :player_items
  belongs_to :player
end
