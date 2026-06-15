Rails.application.routes.draw do
  get "users/new"
  get "users/create"
  resource :session
  resources :passwords, param: :token
  root "study_decks#index"

  resources :users, only: %i[new create]

  resources :study_decks, only: [ :index, :show ]
  resources :study_cards, only: [ :show ]

  resources :questions, only: [] do
    post :check_answer, on: :member
  end
end
