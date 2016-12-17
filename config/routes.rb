Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do
    resources :workouts
  end
  resources :workouts
  resources :profiles
  get "profiles/myprofile" => "profiles#myprofile"
  get "profiles/showuser" =>"profiles#showuser"
  root "workouts#showall" # Change
end
