Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :recipes

  #Recipes
  get 'recipes' => 'recipes#index'
  get 'recipes/new' => 'recipes#new', as: :newrecipe
  post 'recipes' => 'recipes#create'
  get 'recipes/:id' => 'recipes#show', as: :showrecipe
  get 'recipes/:id/edit' => 'recipes#edit', as: :editrecipe
  patch 'recipes/:id' => 'recipes#update'
  post 'recipes/:id' => 'recipes#destroy', as: :deleterecipe

  #Users
  get 'signup' => 'users#new'
  resources :users

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get 'logout' => 'sessions#destroy', as: :logout

  get 'user/:id' => 'user#show', as: :userprofile

  #Pages
  get 'about' => 'pages#about'
  get 'myrecipes' => 'pages#showmyrecipes', as: :myrecipes
end
