Rails.application.routes.draw do
  devise_for :users , controllers: {:omniauth_callbacks => "callbacks"}
  resources :movies
  root 'movies#index'
  get 'movies/comment/create', to: "comments#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
