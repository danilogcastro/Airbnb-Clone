# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying all flats..."

Flat.destroy_all

puts "Done!"

  PICTURES = [
    "https://images.unsplash.com/photo-1580587771525-78b9dba3b914?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1480074568708-e7b720bb3f09?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8N3x8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1564013799919-ab600027ffc6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8OXx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1493663284031-b7e3aefcae8e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MzB8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mzl8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1512916194211-3f2b7f5f7de3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NTF8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1613977257363-707ba9348227?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nzd8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1613977257592-4871e5fcd7c4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nzl8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1495433324511-bf8e92934d90?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NDF8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1503174971373-b1f69850bded?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MzR8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1519643381401-22c77e60520e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTMwfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1567117439408-c01fa6282ed1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTc0fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1571635685743-db0db8e31d9a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTc1fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1576493169316-0745093ae312?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTg2fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1549517045-bc93de075e53?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MjAxfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1416331108676-a22ccb276e35?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MjE1fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1506126279646-a697353d3166?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MjI5fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1581974206939-b42731ea9dc9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MjQ0fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1606819422797-74627f4dac0b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MzY4fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1528255671579-01b9e182ed1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTI1fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
  ]


puts "Seeding..."


20.times do
  flat = Flat.new(
    name: "#{['Beautiful', 'Sunny', 'Spacious', 'Exquisite', 'Incredible', 'Stylish', 'Affordable'].sample} #{['Flat', 'Apartment', 'Room', 'House', 'Studio', 'En-suite'].sample} in #{Faker::Address.community}",
    address: Faker::Address.street_name,
    description: Faker::Lorem.paragraph(sentence_count: 7),
    price_per_night: rand(100..500),
    number_of_guests: rand(1..5)
  )
  flat.save
  flat.picture_url = PICTURES[flat.id - 1]
  flat.save

  puts "#{flat.id} - #{flat.name}"
end

puts "All done!"
