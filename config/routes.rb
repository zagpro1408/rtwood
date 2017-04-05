Rails.application.routes.draw do
  resources :orders, only: 'create'
  get '/order' => 'orders#show'

  root to: 'orders#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
