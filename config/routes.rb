Rails.application.routes.draw do
  root to: 'em_website#index'
  get 'how_it_works', to: 'em_website#how_it_works'
  get 'about_us', to: 'em_website#about_us'
  get 'pricing', to: 'em_website#pricing'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
