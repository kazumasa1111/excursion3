Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
    resources :home, only: [:index, :new, :create, :show, :edit, :update, :destroy]
end
