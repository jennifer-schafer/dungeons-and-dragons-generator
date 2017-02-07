json.extract! dungeon, :id, :monster, :quantity, :difficulty, :special_ability, :loot, :created_at, :updated_at
json.url dungeon_url(dungeon, format: :json)
