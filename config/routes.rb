Friends::Application.routes.draw do

  root :to => "home#index"
  devise_for :users, :skip => [:registrations]
  devise_scope :user do
    get 'users/edit' => 'devise/registrations#edit', as: 'edit_user_registration'
    put 'users' => 'devise/registrations#update', :as => 'user_registration'
  end
  # resources :users

  namespace :admin do
    match "pages/:id/new" => 'pages#new', as: :new_nested
    resources :pages do
      resources :images
    end
  
  end
  match '/admin' => 'admin/pages#index', as: :admin_home

  match "/:id" => 'pages#show', as: :top_page
  match "/:id/:nested_id" => 'pages#nested', as: :nested_page
  match "/:id/:nested_id/:nested_page_id" => 'pages#deep_nested', as: :deeply_nested_page


end
