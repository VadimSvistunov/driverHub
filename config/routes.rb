Rails.application.routes.draw do

    root "cars#index"

    resources :cars, only: :index do
        resources :orders, only: [:create, :edit,:update, :new]
    end

end
