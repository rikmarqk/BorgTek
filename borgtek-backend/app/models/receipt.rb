class Receipt < ApplicationRecord

    belongs_to :user
    has_many :computer_receipts
    has_many :computers, through: :computer_receipts
end