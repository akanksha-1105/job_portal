Rails.application.routes.draw do
  resources :jobposts do
    resource :applicants
  end
  resources :employers
  resources :employees


  root to: 'pages#home'


  devise_for :users, controllers: { registrations: 'users/registrations' , sessions: 'users/sessions'}
end

