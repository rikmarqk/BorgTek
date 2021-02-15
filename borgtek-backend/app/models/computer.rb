class Computer < ApplicationRecord
    has_many :computer_receipts
    has_many :receipts, through: :computer_receipts
    has_many :computer_parts
    has_many :parts, through: :computer_parts
end
