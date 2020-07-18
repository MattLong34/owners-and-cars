class OwnersController < ApplicationController
    def index 
        @owners = Owner.all 

        render json: @owners
    end

    def show
        @owner = Owner.find(params[:id])

        render json: @owner
    end

    def create
        @owner = Owner.create(name: params[:name], age: params[:age])

        render json: @owner
    end
end
