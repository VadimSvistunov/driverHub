Rails.application.routes.draw do

    root "cars#index"

    resources :cars, only: [:new, :index, :create]

end
