Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :chat_sessions, only: [:index, :show, :create]
      resources :users, only: [:create, :index]
      resources :transcripts, only: [:create]
    end
  end


  #Web Socket stuff!
  mount ActionCable.server => '/cable'
end
