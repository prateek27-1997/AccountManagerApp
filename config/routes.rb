Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'registrations'}
  resources :accounts, only: [:index, :create, :new]
end
