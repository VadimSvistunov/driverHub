Rails.application.routes.draw do

    root "cars#index"

    resources :orders, only: [:create, :edit,:update, :new] do
        resources :cars, only: [:index]
    end

end
