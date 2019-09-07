Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
  }
  resources :users, only: :show
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :questions do
    collection do 
      get 'search'
    end
    resources :votes, only: [:create, :destroy]
    resources :likes, only: [:create, :destroy]
  end

  resources :categories, only: :show

  match 'categories', to: 'categories#show', via: :get
  root 'questions#index'
end
