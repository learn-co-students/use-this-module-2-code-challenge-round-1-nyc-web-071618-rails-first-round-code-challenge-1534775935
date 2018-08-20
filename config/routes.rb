Rails.application.routes.draw do
  resources :powers, only: [:show, :index]
  resources :heroines, only: [:index, :show, :new, :create]
end
