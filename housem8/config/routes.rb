Rails.application.routes.draw do
  devise_for :house_seekers, path: 'house_seekers'
  devise_for :house_owners, path: 'house_owners'
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  get '/swipe/', to: 'home#swipe'
end
