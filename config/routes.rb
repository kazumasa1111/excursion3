Rails.application.routes.draw do
  get 'schedules/index'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  } 
  root to: "home#index"
    resources :users
    resources :schedules do 
      resource :favorites, only: [:create, :destroy]
    end
end


