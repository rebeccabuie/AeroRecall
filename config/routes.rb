Rails.application.routes.draw do
  get "users/new"
  get "users/create"

  resource :session

  resources :passwords, param: :token

  root "dashboard#index"

  resources :users, only: %i[new create]

  resources :study_decks, only: [ :index, :show ]

  resources :study_cards, only: [ :show ]

  resources :questions, only: [] do
    post :check_answer, on: :member
  end

  resources :reviews, only: [ :index ]

  get "review", to: "reviews#show", as: :review

  post "review/:id/answer", to: "reviews#answer", as: :answer_review
end
