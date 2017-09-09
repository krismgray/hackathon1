Rails.application.routes.draw do
  
  root 'posts#index'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  
  resources :bios

  resources :posts do
    resources :comments
  end

end
