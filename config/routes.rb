Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # http_verb url_path, to: 'controller#action', as: :prefix

  # CRUD
  # resources :restaurants, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  # Read
  get 'restaurants', to: 'restaurants#index'

  # Create (2 requests)
  get 'restaurants/new', to: 'restaurants#new'
  post 'restaurants', to: 'restaurants#create'

  # params[:id] = number
  get 'restaurants/:id', to: 'restaurants#show'


  # Update (2 requests)
  get 'restaurants/:id/edit', to: 'restaurants#edit'
  patch 'restaurants/:id', to: 'restaurants#update'

  # Destroy
  delete 'restaurants/:id', to: 'restaurants#destoy'
end
