json.extract! product, :id, :title, :views, :created_at, :updated_at
json.url product_url(product, format: :json)
