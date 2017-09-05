Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/about'

  devise_for :users, :controllers => {:registrations => "users/registrations"}
  resources :users, :only => [:show, :index] do
  	post 'follow' => 'followings#create'
  	delete 'follow' => 'followings#destroy'
  end

  resource :profile, only: [:show]
  resource :search, only: [:show]
  resources :posts, only: [:create, :show, :edit] do
    resources :comments, only: [:create, :show, :edit]
  end
  root 'pages#home', via: :get

  resources :hashtags, only: [:show]
end
