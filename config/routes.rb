Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root controller: :rooms, action: :index
  mount ActionCable.server => '/cable'

  resources :rooms do
    resources :messages
  end

end
