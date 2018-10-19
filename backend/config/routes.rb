Rails.application.routes.draw do
  scope :api, defaults: {format: :json} do
    resources :examples
    devise_for :users, controllers: {sessions: 'users/sessions'}
    devise_scope :user do
      get 'users/current', to: 'users/sessions#show'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
