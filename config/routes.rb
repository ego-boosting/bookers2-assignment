Rails.application.routes.draw do

  devise_for :users

  root to: 'homes#top'
  resources :books,only:[:create,:index,:show,:edit,:destroy,:update]
  get 'home/about'=> 'homes#about',as: :about

  resources :users, only:[:show, :edit, :index, :update]
end
