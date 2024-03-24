class PlayerItemsController < ApplicationController
  def index
    if params[:player_save_id] == nil
      render json: PlayerItem.player_item_item.all
    else
      player_items = PlayerItem.player_item_item_for_save(params[:player_save_id])
      render json: player_items
    end
  end
 
  def findItemByNameType(item_name, item_type)
    item = Item.items_by_name_type(item_name, item_type)
    if (item == nil)
      new_item = {name: item_name , item_type: item_type}
      new_item = Item.create(new_item);
      return new_item[:id];
    else
      return item[:id];
    end
  end

  def create

    data = JSON.parse(params[:data])
    items_saved = []
    player = Player.find(params[:player_id])
    data.each do |save_item|  
      save_item.delete("id")
      save_item.store("player_id", player.id)
      player_new_save = PlayerSave.find(save_item["player_save_id"])
      if save_item["item_id"] != nil
        if !Item.exists?(save_item["item_id"])           
          save_item.store("item_id", findItemByNameType(save_item["item_name"], save_item["item_type"]));
        end
      else
        save_item.store("item_id", findItemByNameType(save_item["item_name"], save_item["item_type"]));
      end

      if (save_item["item_id"] != nil) 
        save_item.delete("item_name");
        save_item.delete("item_type");
        new_item = PlayerItem.create_new(save_item)
        items_saved.push(new_item)
      end
    end

    render json: items_saved
  end
end
