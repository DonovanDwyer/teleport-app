Rails.application.routes.draw do

  resources :screenshots, only: [:create]

end
