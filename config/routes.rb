Rails.application.routes.draw do

    root "cars#index"

    resources :cars, only: [:new, :index, :create]

    resources :orders, only: [:create, :update, :new]

end
