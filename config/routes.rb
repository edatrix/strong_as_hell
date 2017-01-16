Rails.application.routes.draw do

  root "inspirations#index"

  resources :inspirations

end
