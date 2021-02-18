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

    end

    def update

    end

    def delete

    end
    
end
