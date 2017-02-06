json.extract! quest, :id, :difficulty, :items_required, :quest, :details, :created_at, :updated_at
json.url quest_url(quest, format: :json)