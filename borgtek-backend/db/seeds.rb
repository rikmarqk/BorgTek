# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: "jesus", last_name: "garcia", username: "jesus", password_digest: "jesus", age: 20, email: "jesus@gmail.com", address: "here")
User.create(first_name: "ricardo", last_name: "garcia", username: "ricardo", password_digest: "ricardo", age: 20, email: "ricardo@gmail.com", address: "here")


Receipt.create(user_id: User.first, total_price: 10)
Receipt.create(user_id: User.second, total_price: 20)

Computer.create(name: "comp1", 
                price: 30, 
                mobo: "mobo1", 
                cpu: "cpu1",
                ram: "ram1",
                gpu: "gpu1",
                hdd: "hdd1",
                ssd: "ssd1",
                purpose: "gaming")

Computer.create(name: "comp2", 
                price: 120, 
                mobo: "mobo2", 
                cpu: "cpu2",
                ram: "ram2",
                gpu: "gpu2",
                hdd: "hdd2",
                ssd: "ssd2",
                purpose: "gaming")

# ComputerRece