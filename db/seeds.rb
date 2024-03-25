# Clear existing data - in proper order
PlayerItem.destroy_all
PlayerSave.destroy_all
Player.destroy_all
Item.destroy_all

# Seed items
items_data = [
  { name: "Larry", item_type: 10 },
  { name: "Function_jumpPower", item_type: 3 },
  { name: "Function_playerSize", item_type: 3 },
  { name: "Function_passKey", item_type: 3 },
  { name: "Something Special Function", item_type: 3  },
  { name: "Number_1", item_type: 1 },
  { name: "Number_2", item_type: 1 },
  { name: "Number_3", item_type: 1 },
  { name: "Number_4", item_type: 1 },
  { name: "Number_5", item_type: 1 },
  { name: "Number_6", item_type: 1 },
  { name: "Number_7", item_type: 1 },
  { name: "Number_8", item_type: 1 },
  { name: "Number_9", item_type: 1 },
  { name: "Number_10", item_type: 1 },
  { name: "Operator_+", item_type: 2 },
  { name: "Operator_-", item_type: 2 },
  { name: "Operator_*", item_type: 2 },
  { name: "Operator_/", item_type: 2 },
  { name: "Operator_%", item_type: 2 },
  { name: "Coin", item_type: 11 },
]

items_data.each do |item_data|
  Item.create!(item_data)
end

# Clear existing players


# Seed players
players_data = [
  { username: "abcd", email: "abcd@gmail.com", password: '1234', password_confirmation: '1234', save_point: nil }
]

players_data.each do |player_data|
  Player.create!(player_data)
end


# Seed saves
player = Player.find_by(username: "abcd")
saves_data = [
  { player: player, save_point: 1, current: true }
]

saves_data.each do |save_data|
  PlayerSave.create!(save_data)
end


# Seed player items
itemLarry = Item.find_by(name: "Larry")

itemJump = Item.find_by(name: "Function_jumpPower")
itemSize = Item.find_by(name: "Function_playerSize")
itemPassKey = Item.find_by(name: "Function_passKey")
itemN1 = Item.find_by(name: "Number_1")
itemN2 = Item.find_by(name: "Number_2")
itemN3 = Item.find_by(name: "Number_3")
itemN4 = Item.find_by(name: "Number_4")
itemN5 = Item.find_by(name: "Number_5")
itemN6 = Item.find_by(name: "Number_6")
itemN7 = Item.find_by(name: "Number_7")
itemN8 = Item.find_by(name: "Number_8")
itemN9 = Item.find_by(name: "Number_9")
itemN10 = Item.find_by(name: "Number_10")
itemOPlus = Item.find_by(name: "Operator_+")
itemOMinus = Item.find_by(name: "Operator_-")
itemOMult = Item.find_by(name: "Operator_*")
itemODiv = Item.find_by(name: "Operator_/")
itemOMod = Item.find_by(name: "Operator_%")
itemCoin = Item.find_by(name: "Coin")


save = PlayerSave.find_by(player_id: player.id)

if player && save
  PlayerItem.create!(
    player_id: player.id,
    item_id: itemLarry.id,
    unique_item_name: "",
    player_save_id: save.id,
    container_item_id: 1,
    location_x: 1,
    location_y: 1,
    map_id: 'STARTITEM'
  )
  PlayerItem.create!(
    player_id: player.id,
    item_id: itemLarry.id,
    unique_item_name: "",
    player_save_id: save.id,
    container_item_id: 1,
    location_x: 1,
    location_y: 1,
    map_id: 'STARTITEM'
  )
  PlayerItem.create!(
    player_id: player.id,
    item_id: itemJump.id,
    unique_item_name: "",
    player_save_id: save.id,
    container_item_id: 1,
    location_x: 1,
    location_y: 1,
    map_id: 'STARTITEM'
  )
  PlayerItem.create!(
    player_id: player.id,
    item_id: itemSize.id,
    unique_item_name: "",
    player_save_id: save.id,
    container_item_id: 1,
    location_x: 1,
    location_y: 1,
    map_id: 'STARTITEM'
  )
  PlayerItem.create!(
    player_id: player.id,
    item_id: itemPassKey.id,
    unique_item_name: "",
    player_save_id: save.id,
    container_item_id: 1,
    location_x: 1,
    location_y: 1,
    map_id: 'STARTITEM'
  )
  PlayerItem.create!(
    player_id: player.id,
    item_id: itemN1.id,
    unique_item_name: "",
    player_save_id: save.id,
    container_item_id: 1,
    location_x: 1,
    location_y: 1,
    map_id: 'STARTITEM'
  )
  PlayerItem.create!(
    player_id: player.id,
    item_id: itemN2.id,
    unique_item_name: "",
    player_save_id: save.id,
    container_item_id: 1,
    location_x: 1,
    location_y: 1,
    map_id: 'STARTITEM'
  )
  PlayerItem.create!(
    player_id: player.id,
    item_id: itemN3.id,
    unique_item_name: "",
    player_save_id: save.id,
    container_item_id: 1,
    location_x: 1,
    location_y: 1,
    map_id: 'STARTITEM'
  )
  PlayerItem.create!(
    player_id: player.id,
    item_id: itemN4.id,
    unique_item_name: "",
    player_save_id: save.id,
    container_item_id: 1,
    location_x: 1,
    location_y: 1,
    map_id: 'STARTITEM'
  )
  PlayerItem.create!(
    player_id: player.id,
    item_id: itemN5.id,
    unique_item_name: "",
    player_save_id: save.id,
    container_item_id: 1,
    location_x: 1,
    location_y: 1,
    map_id: 'STARTITEM'
  )
  PlayerItem.create!(
    player_id: player.id,
    item_id: itemN6.id,
    unique_item_name: "",
    player_save_id: save.id,
    container_item_id: 1,
    location_x: 1,
    location_y: 1,
    map_id: 'STARTITEM'
  )
  PlayerItem.create!(
    player_id: player.id,
    item_id: itemN7.id,
    unique_item_name: "",
    player_save_id: save.id,
    container_item_id: 1,
    location_x: 1,
    location_y: 1,
    map_id: 'STARTITEM'
  )
  PlayerItem.create!(
    player_id: player.id,
    item_id: itemN8.id,
    unique_item_name: "",
    player_save_id: save.id,
    container_item_id: 1,
    location_x: 1,
    location_y: 1,
    map_id: 'STARTITEM'
  )
  PlayerItem.create!(
    player_id: player.id,
    item_id: itemN9.id,
    unique_item_name: "",
    player_save_id: save.id,
    container_item_id: 1,
    location_x: 1,
    location_y: 1,
    map_id: 'STARTITEM'
  )
  PlayerItem.create!(
    player_id: player.id,
    item_id: itemN10.id,
    unique_item_name: "",
    player_save_id: save.id,
    container_item_id: 1,
    location_x: 1,
    location_y: 1,
    map_id: 'STARTITEM'
  )
  PlayerItem.create!(
    player_id: player.id,
    item_id: itemOPlus.id,
    unique_item_name: "",
    player_save_id: save.id,
    container_item_id: 1,
    location_x: 1,
    location_y: 1,
    map_id: 'STARTITEM'
  )
  PlayerItem.create!(
    player_id: player.id,
    item_id: itemOMinus.id,
    unique_item_name: "",
    player_save_id: save.id,
    container_item_id: 1,
    location_x: 1,
    location_y: 1,
    map_id: 'STARTITEM'
  )
  PlayerItem.create!(
    player_id: player.id,
    item_id: itemODiv.id,
    unique_item_name: "",
    player_save_id: save.id,
    container_item_id: 1,
    location_x: 1,
    location_y: 1,
    map_id: 'STARTITEM'
  )
  PlayerItem.create!(
    player_id: player.id,
    item_id: itemOMult.id,
    unique_item_name: "",
    player_save_id: save.id,
    container_item_id: 1,
    location_x: 1,
    location_y: 1,
    map_id: 'STARTITEM'
  )
  PlayerItem.create!(
    player_id: player.id,
    item_id: itemOMod.id,
    unique_item_name: "",
    player_save_id: save.id,
    container_item_id: 1,
    location_x: 1,
    location_y: 1,
    map_id: 'STARTITEM'
  )
  PlayerItem.create!(
    player_id: player.id,
    item_id: itemCoin.id,
    unique_item_name: "",
    player_save_id: save.id,
    container_item_id: 1,
    location_x: 1,
    location_y: 1,
    map_id: 'STARTITEM'
  )
  PlayerItem.create!(
    player_id: player.id,
    item_id: itemCoin.id,
    unique_item_name: "",
    player_save_id: save.id,
    container_item_id: 1,
    location_x: 1,
    location_y: 1,
    map_id: 'STARTITEM'
  )
  PlayerItem.create!(
    player_id: player.id,
    item_id: itemCoin.id,
    unique_item_name: "",
    player_save_id: save.id,
    container_item_id: 1,
    location_x: 1,
    location_y: 1,
    map_id: 'STARTITEM'
  )
  PlayerItem.create!(
    player_id: player.id,
    item_id: itemCoin.id,
    unique_item_name: "",
    player_save_id: save.id,
    container_item_id: 1,
    location_x: 1,
    location_y: 1,
    map_id: 'STARTITEM'
  )
  PlayerItem.create!(
    player_id: player.id,
    item_id: itemCoin.id,
    unique_item_name: "",
    player_save_id: save.id,
    container_item_id: 1,
    location_x: 1,
    location_y: 1,
    map_id: 'STARTITEM'
  )

end
