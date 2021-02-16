class PartsController < ApplicationController

    def index 
        @parts = Part.all
    end

    def show
        @part = Part.find(params[:id])
    end

    def create

    end

    def update

    end

    def delete

    end
    
end
