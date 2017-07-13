Rails.application.routes.draw do
  resources :orders, only: 'create'
  get '/order' => 'orders#show'
  get '/gallery' => 'landing_page#gallery'

  root to: 'landing_page#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
