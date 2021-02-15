class CreateReceipts < ActiveRecord::Migration[6.1]
  def change
    create_table :receipts do |t|
        t.float :total_price, default: 0
        t.integer :user_id
      t.timestamps
    end
  end
end
