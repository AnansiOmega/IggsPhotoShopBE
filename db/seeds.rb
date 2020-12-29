# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# t.string :title
# t.string :class
# t.integer :price
puts 'destroy'

# Photo.destroy_all
User.destroy_all

puts 'rebuild'


# i = 1 

# 42.times do
#     Photo.create(
#         title: "pic#{i}",
#         category: 'Adventure',
#         price: 1
#     ).image.attach(
#         io: File.open("db/photos/pic#{i}.jpg"),
#         filename: "pic#{i}.jpg",
#         content_type: 'application/jpg'
#     )

#     i += 1 
# end

User.create(username: 'Iggs', password: '123', email: 'ibutautas@yahoo.com')


puts 'done'