Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :sauna, only: %i[index]
      resources :island, only: %i[index]
      post 'search', to: 'v1/search#result'
    end
  end
end
