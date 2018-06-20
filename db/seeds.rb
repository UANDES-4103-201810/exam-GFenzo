# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'papa@john.com', password: '123456', password_confirmation: '123456')

Recipe.create(name: 'Pepperoni', price: '5')
Recipe.create(name: 'Margherita', price: '5')
Recipe.create(name: 'Artichoke Explosion', price: '8')

Ingredient.create(name: 'Mozzarella')
Ingredient.create(name: 'Tomato')
Ingredient.create(name: 'Pepperoni')
Ingredient.create(name: 'Olives')
Ingredient.create(name: 'Onion')
Ingredient.create(name: 'Artichokes')
Ingredient.create(name: 'Mushrooms')
Ingredient.create(name: 'Ham')
Ingredient.create(name: 'Scrimp')

Crust.create(name: 'Regular', price: '1')
Crust.create(name: 'Thin', price: '2')

Recipeingredient.create(recipe_id:1, ingredient_id:1)
Recipeingredient.create(recipe_id:1, ingredient_id:3)
Recipeingredient.create(recipe_id:2, ingredient_id:1)
Recipeingredient.create(recipe_id:3, ingredient_id:6)

