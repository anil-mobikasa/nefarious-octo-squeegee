Rails.application.routes.draw do
  #resources :dietplans

  resources :steps

  resources :recipies

  devise_for :users

  scope '/admin-panel' do
    resources :users, :dietplans
  end

  resources :admins, only: [] do 
    member do
      get 'dashboard'
    end
  end

  resources :super_admins, only: [] do 
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


  root 'welcome#index'
end
