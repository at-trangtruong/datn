Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "restaurants#index"
  resources :recommenders, only: :index
  resources :searches, only: :index
  resources :users do
    collection do
      get "login" => "users#login"
      post "login" => "users#signin"
      post "signup" => "users#resgister"
      get "logout" => "users#logout"
    end
    member do
      get "restaurants" => "users#restaurants"
    end
  end
  resources :restaurants do
    member do
      get "menu" => "restaurants#menu"
    end
  end
  resources :menus do
  end
  resources :contacts do

  end
  resources :rates do

  end

  namespace "admin" do
    resources :categories do

    end
    resources :contacts do
    end
  resources :home ,only: :index, to: 'restaurants#home'
    resources :users do
      collection do
        get "login" => "users#login"
        post "login" => "users#signin"
        post "signup" => "users#resgister"
        get "logout" => "users#logout"
      end
      member do
        get "restaurants" => "users#restaurants"
      end
    end
    resources :restaurants do
      member do
        get "menu" => "restaurants#menu"
      end
      collection do
        post "set_active" => "restaurants#set_active"
        post "set_highlight" => "restaurants#set_highlight"
      end
    end
    resources :menus do
    end
  end
end
