# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroying all data"
Booking.destroy_all
Venue.destroy_all
User.destroy_all
puts "creating"
Venue.create!({
  name: "The Lounge",
  capacity: 50,
  price: 600,
  location: "Paris",
  address: "18 Rue Beautreillis, 75004 Paris, France",
  description: "Small lounge for private events",
  category: "Lounges",
  remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/v1519753413/photos-by-lanty-568713-unsplash.jpg"
})

Venue.create!({
  name: "Big Warehouse",
  capacity: 250,
  price: 1000,
  location: "Brussels",
  address: "Van Arteveldestraat 1, 1000 Brussels, Belgium",
  description: "Large open space for private events",
  category: "Large venues",
  remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/v1519753403/joshua-ness-109299-unsplash.jpg"
})
Venue.create!({
  name: "Pouso alto",
  capacity: 100,
  price: 500,
  location: "Oliveira de Azemeis",
  address: "Travessa do vale 38, 3720 Oliveira de Azemeis, Portugal",
  description: "large dining",
  category: "Dining rooms",
  remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/v1519753403/joshua-ness-109299-unsplash.jpg"
})
Venue.create!({
  name: "Estrela do Atlantico",
  capacity: 80,
  price: 650,
  location: "Mira",
  address: "Avenida do Atlantico 1038, 3565 Mira, Portugal",
  description: "large dining",
  category: "Dining rooms",
  remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/v1519753417/sweet-ice-cream-photography-89501-unsplash.jpg"
})

Venue.create!({
  name: "Cool space",
  capacity: 80,
  price: 650,
  location: "Mira",
  address: "Avenida do Atlantico 1038, 3565 Mira, Portugal",
  description: "large venues",
  category: "large venues",
  remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/v1519753417/sweet-ice-cream-photography-89501-unsplash.jpg"
})

Venue.create!({
  name: "Estrela do Atlantico",
  capacity: 80,
  price: 650,
  location: "Mira",
  address: "Avenida do Atlantico 1038, 3565 Mira, Portugal",
  description: "large dining",
  category: "Dining rooms",
  remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/v1519753417/sweet-ice-cream-photography-89501-unsplash.jpg"
})
User.create!({
    name: "Jose",
    email: "joemonteiro@verizon.net",
    password: "123456"
})
User.create!({
    name: "Irina",
    email: "geebabygee@github.com>",
    password: "654321"
})
User.create!({
    name: "Maura",
    email: "email@lewagon.com",
    password: "234567"
})
User.create!({
    name: "Francisco",
    email: "franciscobarreto1997@github.com",
    password: "765432"
})
Booking.create!({
    date: DateTime.now,
    user: User.last,
    venue: Venue.first
})

