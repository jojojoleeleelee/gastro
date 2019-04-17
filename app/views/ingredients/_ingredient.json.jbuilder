json.extract! ingredient, :id, :name, :quantity, :purchase_date, :category, :expiration_date, :favorite, :created_at, :updated_at
json.url ingredient_url(ingredient, format: :json)
