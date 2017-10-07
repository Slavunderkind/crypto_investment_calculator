Rails.application.routes.draw do
  root 'pages#index'
  resources :currencies, only: %i[new create index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
