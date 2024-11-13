Rails.application.routes.draw do

resources :restaurants, only: [:index, :show, :new, :create]
get "up" => "rails/health#show", as: :rails_health_check

end
