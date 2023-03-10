Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #Api definition
  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :users, only: [:show]
    end
  end
end
