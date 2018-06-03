Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'hunspell', to: 'hunspell#index'

  root to: 'hunspell#index'

end
