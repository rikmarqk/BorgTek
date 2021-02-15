class Part < ApplicationRecord
    has_many :computer_parts
    has_many :computers, through: :computer_parts
end
