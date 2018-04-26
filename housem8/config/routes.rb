Rails.application.routes.draw do
  devise_for :house_seekers, path: 'house_seekers'
  devise_for :house_owners, path: 'house_owners'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  get "listings/new", to: "listing#new", as: "listings"
  post "listings/new", to: "listing#create"
  get '/swipe/', to: 'home#swipe'
  patch "listing/destroy", to: "listing#delete", as: "listingsdestroy"
  post "listing/hide", to:"listing#hide", as: "listingshide"
end
