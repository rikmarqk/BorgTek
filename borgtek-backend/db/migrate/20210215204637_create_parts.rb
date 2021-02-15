class CreateParts < ActiveRecord::Migration[6.1]
  def change
    create_table :parts do |t|
      t.string :brand
      t.string :model
      t.integer :capacity 
      t.integer :rpm
      t.integer :cache
      t.string :interface
      t.string :memory_type
      t.integer :speed
      t.integer :amount 
      t.string :type
      t.string :color
      t.string :material 
      t.boolean :power
      t.float :weight
      t.float :dimension_length
      t.float :dimension_width 
      t.float :dimension_height 
      t.integer :ports 
      t.integer :expansion_slots 
      t.integer :max_power 
      t.integer :fans 
      t.boolean :over_voltage_protection 
      t.boolean :over_load_protection
      t.integer :input_voltage 
      t.integer :input_current 
      t.string :socket_type 
      t.string :chipset 
      t.integer :number_of_memory_slots 
      t.integer :max_memory 
      t.string :channel_supported
      t.string :type_expansion_slot  
      t.string :form_factor
      t.string :processor_type 
      t.string :generation 
      t.integer :core_name
      t.float :clock_speed 
      t.integer :cores
      t.integer :memory_clock 
      t.integer :memory_size 
      t.integer :power_consumption
      t.integer :storage

      t.timestamps
    end
  end
end
