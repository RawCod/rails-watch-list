Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # list routes
  # see all lists lists
  # details of given list lists/42
  # create new list get lists/new post lists
  resources :lists, only: %i[index show new create] do

    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: [:destroy]
end
