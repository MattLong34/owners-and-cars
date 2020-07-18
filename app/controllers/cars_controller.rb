class CarsController < ApplicationController
    def index 
        @cars = Car.all 

        render json: @cars, include: [:owner]
    end

    def show
        @car = Car.find(params[:id])

        render json: @car, include: [:owner]
    end

    def create
        @car = Car.create(make: params[:make], model: params[:model], color: params[:color], year: params[:year], owner_id: params[:owner_id])

        render json: @car
    end
end
