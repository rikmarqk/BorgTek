class ReceiptsController < ApplicationController

    def index 
        @receipts = Receipt.all
        render json: @receipts
    end

    def show
        @receipt = Receipt.find(params[:id])
        render json: @receipt
    end

    def create

    end

    def update

    end

    def delete

    end



    
end