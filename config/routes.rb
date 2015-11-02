Rails.application.routes.draw do
  resources :dietplans

  devise_for :users
 
  #resources :users#, only: [] do 
  #  collection do
  #    get 'dashboard'
  #  end
  #end

  resources :admins, only: [] do 
    member do
      #resources :users
      get 'dashboard'
    end
    collection do
      resources :users
    end
  end

  resources :super_admins, only: [] do 
    member do      
      get 'dashboard'
    end
    collection do
      resources :users
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


  root 'welcome#index'
end
