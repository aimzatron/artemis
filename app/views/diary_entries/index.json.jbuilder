json.diary_entries @diary_entries do |diary_entry|
  json.extract! diary_entry, :id, :entry_text, :created_at, :uuid
  json.url diary_entry_url(diary_entry, format: :json)
end
