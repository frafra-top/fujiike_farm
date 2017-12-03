json.extract! item, :id, :name, :price, :content, :exist, :created_at, :updated_at
json.url item_url(item, format: :json)
