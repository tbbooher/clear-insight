json.extract! moodys_estimate, :id, :year, :impact, :sp_index, :created_at, :updated_at
json.url moodys_estimate_url(moodys_estimate, format: :json)