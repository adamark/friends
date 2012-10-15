Friends::Application.routes.draw do

  resources :pages do
    resources :sub_pages do
      resources :galleries
    end
  end

  resources :images

  resources :galleries

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users

  namespace :admin do
    resources :images
    resources :pages do
      resources :sub_pages do
        resources :galleries
      end
    end
  end
end