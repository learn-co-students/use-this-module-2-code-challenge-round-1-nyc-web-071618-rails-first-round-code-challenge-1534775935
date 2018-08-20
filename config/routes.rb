Rails.application.routes.draw do
  resources :powers, only: [:index, :show, :edit, :update, :destroy]
  resources :heroines
end
