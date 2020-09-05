Rails.application.routes.draw do
  get 'schedules/index'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  } 
  root to: "home#index"
    resources :home
    resources :users
    resources :schedules
end
