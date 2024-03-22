
# Clear existing items
Item.destroy_all

# Seed items
items_data = [
  { name: "Larry", item_type: 1, has_obtained: false },
  { name: "Larry", item_type: 1, has_obtained: false },
  { name: "Larry", item_type: 1, has_obtained: false },
  { name: "Larry", item_type: 1, has_obtained: false },
  { name: "Larry", item_type: 1, has_obtained: false },
  { name: "Larry", item_type: 1, has_obtained: false },
  { name: "Larry", item_type: 1, has_obtained: false },
  { name: "Larry", item_type: 1, has_obtained: false },
  { name: "Larry", item_type: 1, has_obtained: false },
  { name: "Larry", item_type: 1, has_obtained: false },
  { name: "Larry", item_type: 1, has_obtained: false },
  { name: "Larry", item_type: 1, has_obtained: false },
  { name: "Larry", item_type: 1, has_obtained: false },
  { name: "Larry", item_type: 1, has_obtained: false },
  { name: "Larry", item_type: 1, has_obtained: false },
  { name: "Larry", item_type: 1, has_obtained: false },
  { name: "Larry", item_type: 1, has_obtained: false },
  { name: "Larry", item_type: 1, has_obtained: false },
  { name: "Larry", item_type: 1, has_obtained: false },
  { name: "Larry", item_type: 1, has_obtained: false },
  { name: "Larry", item_type: 1, has_obtained: false },
  { name: "Jump Function", item_type: 2, has_obtained: false},
  { name: "Size Function", item_type: 2, has_obtained: false },
  { name: "Loop Function", item_type: 2, has_obtained: false },
  { name: "Something Special Function", item_type: 2, has_obtained: false },
  { name: "1", item_type: 3, has_obtained: false },
  { name: "2", item_type: 3, has_obtained: false},
  { name: "3", item_type: 3, has_obtained: false},
  { name: "4", item_type: 3, has_obtained: false},
  { name: "5", item_type: 3, has_obtained: false},
  { name: "6", item_type: 3, has_obtained: false},
  { name: "7", item_type: 3, has_obtained: false},
  { name: "8", item_type: 3, has_obtained: false},
  { name: "9", item_type: 3, has_obtained: false},
  { name: "10", item_type: 3, has_obtained: false},
  { name: "+", item_type: 4, has_obtained: false},
  { name: "-", item_type: 4, has_obtained: false},
  { name: "*", item_type: 4, has_obtained: false},
  { name: "/", item_type: 4, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false},
  { name: "coin", item_type: 5, has_obtained: false}
]

items_data.each do |item_data|
  Item.create!(item_data)
end

Player.destroy_all

players_data = [
  { username: "abcd", email: "abcd@gmail.com", save_point: nil }
]

players_data.each do |player_data|
  Player.create!(player_data)
end


PlayerItem.destroy_all

player_items_data = [
{ player_id: 1,
  item_id: 163,
  save_id: 1,
  container_item_id: 1,
  location_x: 1,
  location_y: 1,
  map_id: 'STARTITEM'
}
]

player_items_data.each do |player_item|
  PlayerItem.create!(player_item)
end