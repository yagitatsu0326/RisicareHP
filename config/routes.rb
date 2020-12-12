Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "homes#top"

  namespace :admin do
  	resources :events
  	resources :informations
  end


  resources :events
  resources :informations
  get 'homes/top' => 'homes#top', as: 'top'
  get 'homes/school' => 'homes#school', as: 'school'
  get 'homes/staff' => 'homes#staff', as: 'staff'

end
