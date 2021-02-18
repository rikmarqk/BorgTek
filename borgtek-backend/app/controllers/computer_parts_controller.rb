class ComputerPartsController < ApplicationController

    def index 
        @computer_parts = ComputerPart.all
        render json: @computer_parts
    end

    def show
        @computer_part = ComputerPart.find(params[:id])
        render json: @computer_part
    end

    def create

    end

    def update

    end

    def delete

    end
    
end
