class PartsController < ApplicationController

    def index 
        @parts = Part.all
        render json: @parts
    end

    def show
        @part = Part.find(params[:id])
        render json: @part
    end

    def create

    end

    def update

    end

    def delete

    end
    
end
