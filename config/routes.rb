Rails.application.routes.draw do
  resources :powers, only: [:index, :new ,:create, :show, :edit, :update]
  resources :heroines, only: [:index, :new, :create, :show, :edit, :update]
end
