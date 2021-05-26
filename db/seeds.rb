# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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

  puts "#{flat.id} - #{flat.name}"
end

puts "All done!"
