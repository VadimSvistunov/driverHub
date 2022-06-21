class CarsController < ApplicationController

    def index
        @cars = Car.all
    end

    def new
        @car = Car.new
    end

    def create
        @car = Car.new(car_attribute)
        @car.status = false
        if @car.save
            redirect_to "/"
        end
    end


    private

    def car_attribute
        params.require(:car).permit(:model, :price)
    end

end
