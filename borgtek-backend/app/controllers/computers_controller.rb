class ComputersController < ApplicationController

    def index 
        @computers = Computer.all
        render json: @computers
    end

    def show
        @computer = Computer.find(params[:id])
        render json: @computer
    end

    def create
        @computer = Computer.create(computer_params)
        render json: @computer 
    end

    def update

    end

    def delete
        @computer = Computer.find(params[:id])
        @computer.destroy
        render json: @computer
    end
    
end

private
    def computer_params
        params.permit(:name, :price, :mobo, :cpu, :ram, :gpu, :hdd, :ssd, :purpose)
    end 
