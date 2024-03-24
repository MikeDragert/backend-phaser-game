class PlayerSave < ApplicationRecord
  has_many :player_items
  belongs_to :player

  def self.player_last_save(player_id)
    PlayerSave.where(["player_id = ?", player_id]).last
  end
end
