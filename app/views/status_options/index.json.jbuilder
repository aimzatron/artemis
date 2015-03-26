json.array!(@status_options) do |status_option|
  json.extract! status_option, :id, :name, :status_category_id
  json.url status_option_url(status_option, format: :json)
end
