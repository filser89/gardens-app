# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Garden.destroy_all
5.times do
  garden = Garden.create!(
    name: Faker::Beer.brand,
    city: Faker::Address.city,
    bio: Garden::BIO.sample,
    image_url: "https://source.unsplash.com/1000x600/?gardens"
  )
  5.times do
    plant = Plant.create!(
      name: Faker::Cannabis.strain,
      size: Plant::SIZE.sample,
      image_url: "https://source.unsplash.com/500x500/?plants",
      garden: garden
    )
    puts "#{plant.name} was created inside #{garden.name}"
    sleep 10
  end
  puts '_________'
end
puts "created #{Garden.count} gardens and #{Plant.count} plants"
