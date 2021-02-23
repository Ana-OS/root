Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :plants, only: [:new, :index, :edit, :update]
    member do
      delete :unlike
      get :like
    end

    resources :reviews, only: [ :new, :create, :edit, :update ]
  end

    resources :stores, only: [:index]

    resources :reviews, only: :destroy
end
