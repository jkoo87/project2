Rails.application.routes.draw do
  devise_for :users

  root to: 'categories#index'

  resources :categories

  resources :recipes do
    resources :reviews, except: [:index, :show]
    resources :directions, except: [:index, :show]
    resources :categories, except: [:index, :show]
  end

  resources :recipes, only: [:index, :show] do
    member do
      post 'add_will_try_connecting'
      delete 'remove_will_try_connecting'
      post 'add_did_try_connecting'
      delete 'remove_did_try_connecting'
    end
  end



end
