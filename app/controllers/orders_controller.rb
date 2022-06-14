class OrdersController < ApplicationController

    def car
        @car ||= Car.find(params[:car_id])
    end

    def new
        @order = car.orders.build
        @car_id = params[:car_id]
    end

    def create
        @order = Order.new(order_params)
        if @order.save
            redirect_to "/"
        else
            render :new, status: 400
        end
    end

    def edit
        @order = Order.find(params[:id])
    end

    def update
        Order.where(id: params[:id]).update(order_params)
        redirect_to "/"
    end

    private
    def order_params
        params.permit(:customer_id, :started_at, :finished_at)
    end
end
