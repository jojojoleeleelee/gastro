Rails.application.routes.draw do
  resources :recipe_ingredients
  resources :recipes
  resources :users
  resources :ingredients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
