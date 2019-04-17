json.extract! recipe, :id, :title, :user_id, :ingredient_id, :pic_url, :ingred_items, :directions, :cooked, :favorite, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
