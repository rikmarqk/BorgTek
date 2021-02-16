class ReceiptsController < ApplicationController

    def index 
        @receipts = Receipt.all
    end

    def show
        @receipt = Receipt.find(params[:id])
    end

    def create

    end

    def update

    end

    def delete

    end



    
end