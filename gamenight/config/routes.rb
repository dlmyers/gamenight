Rails.application.routes.draw do
  devise_for :views
  devise_for :users
  resources :users, :path => "friends"
  resources :invites do
    get 'resend'
    get 'accept'
    get 'decline'
  end
  resources :events do
      resources :comments
  end
  get 'schedule/index'
  get 'events/index'

  root 'schedule#index', as: 'schedule'

end
