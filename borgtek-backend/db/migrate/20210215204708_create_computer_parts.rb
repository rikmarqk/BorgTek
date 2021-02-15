class CreateComputerParts < ActiveRecord::Migration[6.1]
  def change
    create_table :computer_parts do |t|
      t.integer :computer_id
      t.integer :part_id

      t.timestamps
    end
  end
end
