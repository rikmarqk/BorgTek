class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
        t.string  :first_name
        t.string  :last_name
        t.string  :username
        t.string  :password_digest  
        t.integer  :age
        t.string  :email
        t.string  :address
      t.timestamps
    end
  end
end
