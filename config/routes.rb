Rails.application.routes.draw do
  devise_for :users
 
 resources :users, only: [] do 
    collection do
      get 'dashboard'
    end
  end

  resources :admins, only: [] do 
    member do
      get 'dashboard'
    end
  end

  resources :super_user, only: [] do 
    member do
      get 'dashboard'
    end
  end

  resources :dietitians, only: [] do 
    member do
      get 'dashboard'
    end
  end

  resources :patients, only: [] do 
    member do
      get 'dashboard'
    end
  end

  #root 'users#dashboard'
  root 'welcome#index'
end
