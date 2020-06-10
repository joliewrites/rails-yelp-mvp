require 'faker'
Restaurant.destroy_all

puts 'Launching restaurants..'
CATEGORY = %w[chinese italian japanese french belgian]

5.times do
  Restaurant.create(
    name: Faker::Movies::LordOfTheRings.character,
    address: Faker::Movies::LordOfTheRings.location,
    category: CATEGORY[rand(0...5)],
    phone_number: Faker::PhoneNumber.phone_number
  )
end

puts 'Launch complete!'
