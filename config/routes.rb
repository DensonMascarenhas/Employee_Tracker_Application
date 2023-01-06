Rails.application.routes.draw do
  devise_for :employees, :controllers=>{:sessions=>'employees/sessions',:invitations=>'employees/invitations',:registrations=>'employees/registrations'}
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :homepage,only:[:index]
  resources :divisions

  root 'homepage#home'
end
