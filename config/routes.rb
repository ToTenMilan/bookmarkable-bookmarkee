Rails.application.routes.draw do
	root 'webpages#index'
  resources :webpages, only: [:index, :show, :create]
end
