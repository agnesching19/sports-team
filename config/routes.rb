Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :teams do
    resources :members
  end

  root to: "teams#index"
end
