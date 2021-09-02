Rails.application.routes.draw do

  devise_for :users
  root to: "infomations#index"

  resources :infomations, only: [:index,:create,:destroy] do
    collection do
     get 'fresh'
    end
  end

  resources :contacts, only: [:new,:create,:show,:index] do
    collection do
      get 'success'
     end
   end

end


