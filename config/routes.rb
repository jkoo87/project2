Rails.application.routes.draw do


  root to: 'categories#index'

  resources :categories do
    resources :recipes, only: [:index, :show]
  end

  devise_for :users
  resources :recipes do
    resources :reviews, except: [:index, :show]
    resources :ingredients, except: [:index, :show]
    resources :directions, except: [:index, :show]
  end

  resources :recipes, only: [:index, :show] do
    member do
      post 'add_will_try_user'
      delete 'remove_will_try_user'
      post 'add_did_try_user'
      delete 'remove_did_try_user'
      post 'add_categorizations'
      delete 'remove_categorizations'
    end
  end



end
