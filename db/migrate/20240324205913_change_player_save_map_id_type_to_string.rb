class ChangePlayerSaveMapIdTypeToString < ActiveRecord::Migration[7.1]
  def change
    change_column(:player_items, :map_id, :string)
  end
end
