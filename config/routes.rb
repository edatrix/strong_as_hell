Rails.application.routes.draw do

  root "inspirations#index"

  resources :inspirations
  get '/secret', :to => "inspirations#admin"
  put '/secret', :to => "inspirations#approve"

end
