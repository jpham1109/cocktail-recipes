Rails.application.routes.draw do
  get '/cocktail_recipes', to: 'cocktail_recipes#index', as: 'cocktail_recipes'
  get '/cocktail_recipes/new', to: 'cocktail_recipes#new', as: 'new_cocktail_recipe'
  post '/cocktail_recipes', to: 'cocktail_recipes#create'
  get '/cocktail_recipes/:id', to: 'cocktail_recipes#show', as: 'cocktail_recipe'
  get '/cocktail_recipes/:id/edit', to: 'cocktail_recipes#edit', as: 'edit_cocktail_recipe'
  patch '/cocktail_recipes/:id', to: 'cocktail_recipes#update'
  delete '/cocktail_recipes/:id', to: 'cocktail_recipes#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
