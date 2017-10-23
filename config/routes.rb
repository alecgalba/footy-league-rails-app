Rails.application.routes.draw do

  resources :fixtures

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }

  resources :teams do
    resources :players
  end

  resources :leagues

  root 'teams#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
