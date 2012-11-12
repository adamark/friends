Friends::Application.routes.draw do

  resources :pages do
    resources :sub_pages do
      resources :galleries
    end
  end

  match '/admin' => 'admin/pages#index'
  resources :images

  resources :galleries

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users

  namespace :admin do
    resources :sub_pages do
      resources :images
    end
    resources :galleries do
      resources :images
    end
    resources :pages do
      resources :images
      resources :sub_pages do
        resources :images
        resources :galleries do
          resources :images
        end
      end
    end
  end
end