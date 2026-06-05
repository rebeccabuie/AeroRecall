Rails.application.routes.draw do
  root "study_decks#index"

  resources :study_decks, only: [:index, :show]
  resources :study_cards, only: [:show]

  resources :questions, only: [] do
    post :check_answer, on: :member
  end
end