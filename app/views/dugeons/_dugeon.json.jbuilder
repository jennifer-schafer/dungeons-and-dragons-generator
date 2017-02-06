json.extract! dugeon, :id, :monster, :quantity, :difficulty, :special_ability, :loot, :created_at, :updated_at
json.url dugeon_url(dugeon, format: :json)