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

Photo.destroy_all
User.destroy_all

puts 'rebuild'
i = 0
# "Watch Dog"
photos =  ["Over Exposure", "Cold", "A Face In The Tree", "Grand Entrance", "Snowdventure", "Smoke Shop", "Knick Knacks", "Ford", "A New World", "Vicarious", "A Blast From The Classed", "Double Blacks", "Old Mobile", "Wolves At The Gate", "Wedding", "Dad", "Kentucky Climbin", "Duke", "Mercedes", "Soarin", "Over The Hills", "As Above", "Steps To Heaven", "Take Me To Church", "Inside Looking Out", "The Grove", "Something In The Water", "The Last Sermon", "Range", "Little Guys", "Little Guy", "Hanging Around", "Shopkeep", "Squirrel", "Serenity", "Winter Wonderland", "Goodbye Tomorrow", "Swan_Song", "The Keeper", "Athena", "Bad Posture"] 
categories = ["Animal", "Animal", "Portrait", "Scenic", "Urban Adventure", "Scenic", "Portrait", "Object", "Action", "Scenic", "Object", "Portrait", "Action", "Scenic", "Photoshop", "Object", "Animal", "Action", "Animal", "Scenic", "Action", "Scenic", "Urban Adventure", "Urban Adventure", "Urban Adventure", "Urban Adventure", "Urban Adventure", "Portrait", "Urban Adventure", "Scenic", "Object", "Object", "Object", "Portrait", "Animal", "Scenic", "Scenic", "Urban Adventure", "Urban Adventure", "Photoshop", "Animal", "Portrait"] 

41.times do
# filename = File.expand_path(File.join(File.dirname(__FILE__), "photos/#{photos[i].split(' ').join('_')}.jpg"))
# out_filename = File.expand_path(File.join(File.dirname(__FILE__), "photos/#{photos[i].split(' ').join('_')}.webp"))
# WebP.encode(filename, out_filename)

    Photo.create(
        title: photos[i],
        category: categories[i],
        price: 1
    ).image.attach(
        io: File.open("db/photos/#{photos[i].split(' ').join('_')}.webp"),
        filename: "#{photos[i].split(' ').join('_')}.webp",
        content_type: 'application/webp'
    )
    i += 1
end

User.create(username: 'Iggs', password: '123', email: 'ibutautas@yahoo.com')


puts 'done'