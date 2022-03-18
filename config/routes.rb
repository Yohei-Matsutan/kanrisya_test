Rails.application.routes.draw do
  get 'admins/show'
  # root to:  'homes#top'
  get 'homes/top'

  devise_scope :worker do
    root to: 'workers/registrations#new'
  end

  devise_for :workers, controllers: {
    sessions: 'workers/sessions',
    passwords: 'workers/passwords',
    registrations: 'workers/registrations'
  }
  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations'
  }

  resources :workers, only: [:show]
  resources :admins, only: [:show]
  resources :logs, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
