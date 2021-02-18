class ComputerReceiptsController < ApplicationController
    
    def index 
        @computer_receipts = ComputerReceipt.all
        render json: @computer_receipts
    end

    def show
        @computer_receipt = ComputerReceipt.find(params[:id])
        render json: @computer_receipt
    end

    def create

    end

    def update

    end

    def delete

    end




    
end