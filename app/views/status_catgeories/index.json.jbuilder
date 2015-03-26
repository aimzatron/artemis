json.array!(@status_catgeories) do |status_catgeory|
  json.extract! status_catgeory, :id, :name
  json.url status_catgeory_url(status_catgeory, format: :json)
end
