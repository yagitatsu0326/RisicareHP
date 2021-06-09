Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "homes#top"

  devise_for :admins 
  namespace :admin do
  	resources :events
  	resources :informations
  end

  resources :events, only: [:show, :index]
  resources :informations, only: [:show, :index]
  get 'homes/top' => 'homes#top', as: 'top'
  get 'homes/school' => 'homes#school', as: 'school'
  get 'homes/staff' => 'homes#staff', as: 'staff'
  get 'homes/club' => 'homes#club', as: 'club'

end
