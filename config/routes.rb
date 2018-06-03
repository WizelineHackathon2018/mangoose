Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'hunspell', to: 'hunspell#index'
  match 'hunspell', to: 'hunspell#verify_text', via: [:post]

  post 'slack/handshake', to: 'slack#handshake'

  root to: 'hunspell#index'
end
