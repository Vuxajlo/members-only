Rails.application.routes.draw do
  devise_for :members, controllers: {
    sessions: 'members/sessions'
  }

  resources :posts, only: [:new, :create, :index]
  root "posts#index"
end
