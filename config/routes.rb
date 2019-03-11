Rails.application.routes.draw do

  root 'bar#index'

  resources :bars, only: [:show, :index]
  resources :gigs, only: [:show, :index]

  scope 'admin', module: 'admin', as: 'admin' do
    root 'bar#index'
    resources :bars
    resources :gigs
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
