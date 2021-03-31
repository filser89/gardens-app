Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "gardens#index"
  resources :gardens do
    resources :plants, only: [:new, :create]
  end
  resources :plants, only: [:destroy]
end
