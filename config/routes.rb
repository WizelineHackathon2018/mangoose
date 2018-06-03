Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'hunspell', to: 'hunspell#index'
  match 'hunspell', to: 'hunspell#verify_text', via: [:post]

  root to: 'hunspell#index'

end
