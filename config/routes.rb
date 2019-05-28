Rails.application.routes.draw do
  root 'validations#new'
  resources :validations
  get '/', to: 'validations#new', as: 'index' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
