Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :projects
  resources	:contacts, only: [:new, :create]
  resources :bios
  get 'welcome/index'
  root 'welcome#index'

  # Any routing errors, redirect to home
  get '*path' => redirect('/')
end
