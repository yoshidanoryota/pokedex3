Rails.application.routes.draw do

  devise_for :users
  root to: "infomations#index"

  resources :users, only: [:show]

  resources :infomations, only: [:index,:create,:destroy] do
    collection do
     get 'fresh'
     get 'tool'
    end
  end

  resources :contacts, only: [:new,:create,:show,:index] do
    collection do
      get 'success'
     end
   end

  resources :articles do
    resources :comments, only: [:create,:destroy]

    collection do
      get 'success'
      get 'search'
      get 'all'
     end
   end


   resources :characters, only: [:index] do
    collection do
      get 'n0100'
      get 'n0200'
      get 'n0300'
      get 'character'
      
     end
   end


end


