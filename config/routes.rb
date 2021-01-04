Rails.application.routes.draw do
  resources :photos
  resources :users
  post '/auth', to: 'auth#create'
  get '/current_user', to: 'auth#show'
  get '/image_file/:id', to: 'photos#download'
  post '/likes/:id', to: 'photos#like'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
