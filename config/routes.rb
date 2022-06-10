Rails.application.routes.draw do

    root "cars#index"

    get "/cars", to: "cars#index"

    resources :orders, only: [:create, :update, :new]

end
