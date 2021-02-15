class CreateParts < ActiveRecord::Migration[6.1]
  def change
    create_table :parts do |t|
      t.string :brand
      t.string :model
t.:capacity 
:rpm
:cache
:interface
:memory_type
:speed
:amount 
:type
:color
:material 
:power
:weight
:dimension_length
:dimension_width 
:dimension_height 
:ports 
:expansion_slots 
:max_power 
:fans 
:over_voltage_protection 
:over_load_protectin
:input_voltage 
:input_current 
:socket_type 
:chipset 
:number_of_memory_slots 
:max_memory 
:channel_supported 
:expansion_slots 
:type_expansion_slot  
:form_factor
:dimension_width 
:dimension_height 
:processor_type 
:generation 
:core_name 
:socket_type 
:clock_speed 
:cores
:memory_type 
:chipset 
:memory_clock 
:memory_size 
:memory_type 
:power_consumption 
:speed 
:storage

      t.timestamps
    end
  end
end
