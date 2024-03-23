# Clear existing items
Item.destroy_all

# Seed items
items_data = [
  { name: "Larry", item_type: 10 },
  { name: "Jump Function", item_type: 3 },
  { name: "Size Function", item_type: 3 },
  { name: "Loop Function", item_type: 3 },
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
  { name: "coin", item_type: 11 },
]

items_data.each do |item_data|
  Item.create!(item_data)
end

# Clear existing players
Player.destroy_all

# Seed players
players_data = [
  { username: "abcd", email: "abcd@gmail.com", save_point: nil }
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
  Save.create!(save_data)
end

# Seed player items
item = Item.find_by(name: "Larry")
save = Save.find_by(player_id: player.id)

if player && item && save
  PlayerItem.create!(
    player_id: player.id,
    item_id: item.id,
    save_id: save.id,
    container_item_id: 1,
    location_x: 1,
    location_y: 1,
    map_id: 'STARTITEM'
  )
end
