Rails.application.routes.draw do
  namespace :api, as: nil, defaults: { format: :json } do
    namespace :v1 do
      resources :app_infos do
        get 'p_hash', on: :collection
        #get ':p_hash', to: 'app_infos#is_malware'
        get 'is_malware', on: :collection
        get 'permissions', on: :collection
        get 'services', on: :collection
        get 'receivers', on: :collection
      end
      #get '*app_infos/is_malware/:p_hash', to: 'app_infos#is_malware'

      resources :classifications
      resources :permissions do
        get 'app_permissions', on: :collection
      end
      resources :users
    end
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
