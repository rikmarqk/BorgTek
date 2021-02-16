class CreateComputers < ActiveRecord::Migration[6.1]
  def change
    create_table :computers do |t|
      t.string :name
      t.float :price
      t.string :mobo
      t.string :cpu
      t.string :ram
      t.string :gpu
      t.string :hdd
      t.string :case
      t.string :psu
      t.string :ssd
      t.string :purpose

      t.timestamps
    end
  end
end
