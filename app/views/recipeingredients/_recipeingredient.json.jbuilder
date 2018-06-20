json.extract! recipeingredient, :id, :recipe, :ingredient, :created_at, :updated_at
json.url recipeingredient_url(recipeingredient, format: :json)
