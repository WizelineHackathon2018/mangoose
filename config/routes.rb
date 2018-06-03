Rails.application.routes.draw do
  get 'hunspell', to: 'hunspell#index'

  post 'slack/handshake', to: 'slack#handshake'

  root to: 'hunspell#index'
end
