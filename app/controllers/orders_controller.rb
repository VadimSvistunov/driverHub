class OrdersController < ApplicationController

    def new
        @orders = Order.new
    end

    def create
        @orders = Order.new(order_params)

        if @orders.save
            redirect_to "/cars"
        else
            render :new, status: :unprocessable_entity
        end
    end

    private
    def order_params
        params.permit(:customer_id, :car_id, :started_at, :finished_at)
    end

    def update
        @orders = Order.find(params[:id])


    end

end
