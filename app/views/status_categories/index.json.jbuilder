json.status_categories @status_categories do |status_category|
  json.extract! status_category, :id, :name
  json.url status_category_url(status_category, format: :json)
end
