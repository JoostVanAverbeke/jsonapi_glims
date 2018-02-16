Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :orders, only: [:index, :show] do
        member do
          namespace :relationships do
            resources :specimens, only: [:index, :show]
          end
        end
      end
      resources :specimens, only: [:index, :show]
    end
  end
end
