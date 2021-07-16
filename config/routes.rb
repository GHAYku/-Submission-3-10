Rails.application.routes.draw do
  get "/home/about" => "homes#about"
  root to: 'homes#top'
  devise_for :users
  resources :books, only: [:new, :create, :index, :show, :destroy, :edit, :update]
  resources :users, only: [:index, :show, :edit, :create, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
