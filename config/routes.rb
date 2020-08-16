Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      # resources :groceries, only: [:index, :create, :update]
      # resources :markets, only: [:index]

      resources :groceries
      # resources :markets
    end
  end

  namespace :api do
    namespace :v1 do
      resources :groceries
    end
  end

end
