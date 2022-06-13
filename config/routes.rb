Rails.application.routes.draw do

  devise_for :users

  root to: 'homes#top'
  resources :books,only:[:create,:index,:show,:destroy,:edit]
  get 'homes/about'=> 'homes#about',as: :about

  resources :users, only:[:show, :edit, :index,:update]
end
