Rails.application.routes.draw do
  resources :lists do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: [:destroy]
end
# /lewagon/fullstack-images/master/rails/watch-list/showpage.png
