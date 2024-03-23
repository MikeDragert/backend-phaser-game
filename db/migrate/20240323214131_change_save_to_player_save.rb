class ChangeSaveToPlayerSave < ActiveRecord::Migration[7.1]
  def change
    rename_table :saves, :player_saves
    rename_column :player_items, :save_id, :player_save_id
  end
end
