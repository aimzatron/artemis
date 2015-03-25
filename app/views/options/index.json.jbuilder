json.options @options do |option|
  json.extract! option, :id, :phrase, :category_id
  json.url option_url(option, format: :json)
end
