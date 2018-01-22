Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :teams do
    resources :members
    resources :positions, only: [:index, :show]
  end

  get '/positions/new', to: 'positions#new'
  post '/positions', to: 'positions#create'
  root to: "teams#index"
end
