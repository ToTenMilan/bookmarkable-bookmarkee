Rails.application.routes.draw do
  resources :webpages, only: [:index, :show, :create]
end
