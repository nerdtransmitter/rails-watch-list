Rails.application.routes.draw do
  root to: "lists#index"
  resources :lists , except: :index do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: [:destroy]
end
# /lewagon/fullstack-images/master/rails/watch-list/showpage.png
