Rails.application.routes.draw do
  root 'home#index'

  get '/nav1', to: 'home#nav1'
  get '/nav2', to: 'home#nav2'
  get '/nav3', to: 'home#nav3'
  get '/nav4', to: 'home#nav4'

  get '/subnav1', to: 'home#subnav1'
  get '/subnav2', to: 'home#subnav2'
  get '/subnav3', to: 'home#subnav3'
  get '/subnav4', to: 'home#subnav4'

  get '/styleguide', to: 'kss/home#index'
  get '/styleguide/1.0', to: 'kss/home#one', as: :styleguide_1

  # mount Kss::Engine => '/kss' if Rails.env.development?
end
