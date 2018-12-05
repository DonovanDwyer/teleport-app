Rails.application.routes.draw do

  resources :body_outlines, only: [:create]
  resources :background_images, only: [:create, :destroy, :show, :index]
  resources :final_images, only: [:create, :destroy, :show, :index]

end
