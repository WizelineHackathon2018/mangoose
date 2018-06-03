Rails.application.routes.draw do
  get 'hunspell', to: 'hunspell#index'
  match 'hunspell', to: 'hunspell#verify_text', via: [:post]

  post 'slack/handshake', to: 'slack#handshake'

  root to: 'hunspell#index'
end
