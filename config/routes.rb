Rails.application.routes.draw do

    root "cars#index"

    resources :cars, only: [:new, :index, :create] do
        resources :orders, only: [:create, :edit,:update, :new]
    end


    resources :orders, only: [:create, :update, :new]

end
