Rails.application.routes.draw do
  resources :webpages, only: [:index, :show]
end
