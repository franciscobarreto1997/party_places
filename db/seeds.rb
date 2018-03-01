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
   description: "The Lounge was founded by the Culver family in 1984, which eventually branched out to more than 300 franchised restaurants all over the US. belly beef short ribs short loin meatball sirloin boudin corned beef. Spare ribs ham boudin ham hock, pork loin drumstick ball tip pork capicola buffalo tail ground round short ribs t-bone filet mignon. Tenderloin shank sausage beef bresaola filet mignon pastrami cow. Jowl ground round short ribs capicola jerky. Meatball bresaola tail, meatloaf cupim pork chop pork belly boudin kielbasa pork loin capicola venison chicken leberkas brisket. Drumstick t-bone filet mignon beef ribs kevin pastrami. Short loin venison salami jowl meatball.
",
  category: "Lounges",
  remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/v1519815482/eloise-ambursley-355875-unsplash.jpg"
})

Venue.create!({
  name: "Big Warehouse",
  capacity: 250,
  price: 1000,
  location: "Brussels",
  address: "Van Arteveldestraat 1, 1000 Brussels, Belgium",
  description: "Big Warehouse is at the same time a Japanese and a warehouse. They offer authentic Japanese partys to rice meals to kids meals that are served in a fast and friendly manner.all tip pork capicola buffalo tail ground round short ribs t-bone filet mignon. Tenderloin shank sausage beef bresaola filet mignon pastrami cow. Jowl ground round short ribs capicola jerky. Meatball bresaola tail, meatloaf cupim pork chop pork belly boudin kielbasa pork loin capicola venison chicken leberkas brisket. Drumstick t-bone filet mignon beef ribs kevin pastrami. Short loin venison salami jowl meatball.
",
  category: "Large venues",
  remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/v1519753403/joshua-ness-109299-unsplash.jpg"
})
Venue.create!({
  name: "Dining Poso Alto",
  capacity: 100,
  price: 500,
  location: "Oliveira de Azemeis",
  address: "Travessa do vale 38, 3720 Oliveira de Azemeis, Portugal",
  description: "Dining Poso Alto is best known for its delicious sandwiches and burgers. They also offer fresh salads, chicken, subs, desserts, and TJ Cinnamons, among others.ll tip pork capicola buffalo tail ground round short ribs t-bone filet mignon. Tenderloin shank sausage beef bresaola filet mignon pastrami cow. Jowl ground round short ribs capicola jerky. Meatball bresaola tail, meatloaf cupim pork chop pork belly boudin kielbasa pork loin capicola venison chicken leberkas brisket. Drumstick t-bone filet mignon beef ribs kevin pastrami. Short loin venison salami jowl meatball.
",
  category: "Dining rooms",
  remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/v1519753413/photos-by-lanty-568713-unsplash.jpg"
})
Venue.create!({
  name: "Estrela do Atlantico",
  capacity: 80,
  price: 650,
  location: "Mira",
  address: "Avenida do Atlantico 1038, 3565 Mira, Portugal",
  description: "We are Committed to using the finest ingredients in our recipes. No food leaves our kitchen that we ourselves would not eat.am boudin ham hock, pork loin drumstick ball tip pork capicola buffalo tail ground round short ribs t-bone filet mignon. Tenderloin shank sausage beef bresaola filet mignon pastrami cow. Jowl ground round short ribs capicola jerky. Meatball bresaola tail, meatloaf cupim pork chop pork belly boudin kielbasa pork loin capicola venison chicken leberkas brisket. Drumstick t-bone filet mignon beef ribs kevin pastrami. Short loin venison salami jowl meatball.
",
  category: "Dining rooms",
  remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/v1519753417/sweet-ice-cream-photography-89501-unsplash.jpg"
})

Venue.create!({
  name: "Cool space",
  capacity: 80,
  price: 650,
  location: "Mira",
  address: "Avenida do Atlantico 1038, 3565 Mira, Portugal",
  description: "large venues, Jerky fatback venison ground round pork belly beef short ribs short loin meatball sirloin boudin corned beef. Spare ribs ham boudin ham hock, pork loin drumstick ball tip pork capicola buffalo tail ground round short ribs t-bone filet mignon. Tenderloin shank sausage beef bresaola filet mignon pastrami cow. Jowl ground round short ribs capicola jerky. Meatball bresaola tail, meatloaf cupim pork chop pork belly boudin kielbasa pork loin capicola venison chicken leberkas brisket. Drumstick t-bone filet mignon beef ribs kevin pastrami. Short loin venison salami jowl meatball.",
  category: "large venues",
  remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/v1519753517/alex-ronsdorf-174075-unsplash.jpg"
})

Venue.create!({
  name: "Estrela do Atlantico",
  capacity: 80,
  price: 650,
  location: "Mira",
  address: "Avenida do Atlantico 1038, 3565 Mira, Portugal",
  description: "To ensure that each guest receives prompt, professional, friendly and courteous service. To maintain a clean, comfortable and well maintained premises for our guests and staff.southern styles of cooking.boudin ham hock, pork loin drumstick ball tip pork capicola buffalo tail ground round short ribs t-bone filet mignon. Tenderloin shank sausage beef bresaola filet mignon pastrami cow. Jowl ground round short ribs capicola jerky. Meatball bresaola tail, meatloaf cupim pork chop pork belly boudin kielbasa pork loin capicola venison chicken leberkas brisket. Drumstick t-bone filet mignon beef ribs kevin pastrami. Short loin venison salami jowl meatball.
",
  category: "Dining rooms",
  remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/v1519905348/matty-adame-274356-unsplash.jpg"
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
Venue.all.each do |venue|

booking = Booking.create!({
    date: DateTime.now,
    user: User.last,
    venue: venue
})
Review.create!({
    content: "Amazing place! Loved it very much!",
    rating: 3,
    booking: booking
})
end
Review.create!({
    content: "Amazing place! Loved it very much!",
    rating: 3,
    booking: Booking.first
})
Review.create!({
    content: "Dope sound, was awesome",
    rating: 5,
    booking: Booking.last
})
Review.create!({
    content: "Really cool space",
    rating: 4,
    booking: Booking.first
})

Review.create!({
    content: "Loved every bit of it",
    rating: 3,
    booking: Booking.first
})

Review.create!({
    content: "Nice one",
    rating: 2,
    booking: Booking.first
})

