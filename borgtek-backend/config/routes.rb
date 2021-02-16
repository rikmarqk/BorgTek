Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, :computer_receipts, :receipts, :computers, :parts, :computer_receipts

end
