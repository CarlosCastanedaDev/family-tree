json.extract! recipe, :id, :recipe_name, :image_url, :description, :ingredients, :directions, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
