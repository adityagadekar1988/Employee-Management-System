Rails.application.routes.draw do
  # root to: "pages#home" 

  
  devise_for :users, controllers: {
    confirmations: 'users/confirmations',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    unlocks: 'users/unlocks'
  }
  
  devise_scope :user do 
    root to: 'users/sessions#new'
  end

  resources :employees 
  resources :addresses
  resources :contacts
  resources :documents

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
