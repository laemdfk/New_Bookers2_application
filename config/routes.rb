Rails.application.routes.draw do

  get 'relationships/create'
  get 'relationships/destroy'
  root to: 'homes#top'
  get 'home/about'=>"homes#about",as: 'about'

  devise_for :users


  resources :books do
    resources :book_comments, only:[:create, :destroy]
    resource :favorites,only:[:create, :destroy]
  end

  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end