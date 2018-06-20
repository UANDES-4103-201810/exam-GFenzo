Rails.application.routes.draw do
  resources :pizzaorders
  resources :deliveryinfos
  resources :orders
  resources :pizzas
  resources :recipeingredients
  resources :recipes
  resources :crusts
  resources :ingredients
  root 'home#index'
  get 'home/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
