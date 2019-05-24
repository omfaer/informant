Rails.application.routes.draw do
  resources :app_infos do
  	get 'p_hash', on: :collection
  	get 'psr_hash', on: :collection
  end

  resources :classifications
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
