Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'em_website#index'
  get 'how_it_works', to: 'em_website#how_it_works'
  get 'about_us', to: 'em_website#about_us'
  get 'pricing', to: 'em_website#pricing'
  post 'add_email', to: 'em_website#add_email'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
