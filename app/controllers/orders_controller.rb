class OrdersController < ApplicationController
    before_action :find_car
    before_action :find_order, only: %i[edit update]

    attr_reader :car, :order

    def new
        @order = car.orders.build
    end

    def create
        @order = car.orders.build(order_params)

        if @order.save
            redirect_to "/"
        else
            render :new, status: :bad_request
        end
    end

    def edit
    end

    def update
        if order.update(order_params)
            redirect_to "/"
        else
            render :edit, status: :bad_request
        end
    end

    private

    def order_params
        params.require(:order).permit(:customer_id, :started_at, :finished_at)
    end

    def find_order
        @order = car.orders.find(params[:id])
    end

    def find_car
        @car = Car.find(params[:car_id])
    end
end
