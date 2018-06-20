class HomeController < ApplicationController
  def index
    @recipes = Recipe.all
    @recing = Recipeingredient.all
    @ingredients = Ingredient.all
  end
end
