json.array!(@diary_entries) do |diary_entry|
  json.extract! diary_entry, :id, :entry_text
  json.url diary_entry_url(diary_entry, format: :json)
end
