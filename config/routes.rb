Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/about'

  devise_for :users, :controllers => {:registrations => "users/registrations"}
  resources :users, :only => [:show, :index] do
  	post 'follow' => 'followings#create'
  	delete 'follow' => 'followings#destroy'
  end

  resource :profile, only: [:show]
  resources :posts, only: [:create, :show]
  root 'pages#home', via: :get
end
