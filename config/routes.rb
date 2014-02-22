Sidetrip::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  resources :places

  get "pages/search"
  get "pages/home"
  get "pages/about"
  get "pages/contact"
  resources :searches

  root :to => "pages#home"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end