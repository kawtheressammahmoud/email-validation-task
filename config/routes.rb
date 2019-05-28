Rails.application.routes.draw do
  root 'validations#index'
  resources :validations
  get '/', to: 'validations#index', as: 'index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
