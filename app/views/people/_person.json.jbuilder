json.extract! person, :id, :name, :race, :character_class, :personality, :alignment, :likes, :dislikes, :created_at, :updated_at
json.url person_url(person, format: :json)