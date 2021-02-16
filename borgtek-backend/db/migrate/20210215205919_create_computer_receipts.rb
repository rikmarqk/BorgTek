class CreateComputerReceipts < ActiveRecord::Migration[6.1]
  def change
    create_table :computer_receipts do |t|
        t.integer :receipt_id
        t.integer :computer_id
      t.timestamps
    end
  end
end
