Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :app_infos do
        get 'p_hash', on: :collection
        get 'is_malware', on: :collection
        get 'permissions', on: :collection
        get 'services', on: :collection
        get 'receivers', on: :collection
      end

      resources :classifications
      resources :permissions do
        get 'app_permissions', on: :collection
      end
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
