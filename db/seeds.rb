require 'faker'

puts "Cleaning database..."
Booking.destroy_all
Gear.destroy_all
User.destroy_all



puts "Creating users..."
puts "Gear..."

10.times do
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.street_address,
    phone: Faker::PhoneNumber.cell_phone,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
  )
  user.save!
end


  gear1 = Gear.new(
    title: Faker::Marketing.buzzwords,
    description: Faker::Quotes::Shakespeare.as_you_like_it_quote,
    model: Faker::Device.model_name,
    category: [ "Longboard", "Foamboard","Fish", "SUPboard", "Shortboard", "Bodyboard", "Wetsuit"].sample,
    brand: "Quicksilver",
    user_id: User.ids.sample,
    rate_per_day: Faker::Number.decimal,
    address: ["Greece", "Hawai", "Japan", "Madeira", "Cuba", "Berlin"].sample
  )
  gear1.photos.attach(io: File.open('app/assets/images/foam1.webp'), filename: 'photo1.jpg')
  gear1.photos.attach(io: File.open('app/assets/images/foam2.webp'), filename: 'photo1.jpg')
  gear1.photos.attach(io: File.open('app/assets/images/foam3.webp'), filename: 'photo1.jpg')
  gear1.save!
  puts "Gear1...created!"


  gear2 = Gear.new(
    title: Faker::Marketing.buzzwords,
    description: Faker::Quotes::Shakespeare.as_you_like_it_quote,
    model: Faker::Device.model_name,
    category: [ "Longboard", "Foamboard","Fish", "SUPboard", "Shortboard", "Bodyboard", "Wetsuit"].sample,
    brand: "Quicksilver",
    user_id: User.ids.sample,
    rate_per_day: Faker::Number.decimal,
    address: ["Greece", "Hawai", "Japan", "Madeira", "Cuba", "Berlin"].sample
  )
  gear2.photos.attach(io: File.open('app/assets/images/board1.webp'), filename: 'photo1.jpg')
  gear2.photos.attach(io: File.open('app/assets/images/board2.webp'), filename: 'photo1.jpg')
  gear2.photos.attach(io: File.open('app/assets/images/board3.webp'), filename: 'photo1.jpg')
  gear2.save!
 puts "Gear2...created!"
  gear3 = Gear.new(
    title: Faker::Marketing.buzzwords,
    description: Faker::Quotes::Shakespeare.as_you_like_it_quote,
    model: Faker::Device.model_name,
    category: [ "Longboard", "Foamboard","Fish", "SUPboard", "Shortboard", "Bodyboard", "Wetsuit"].sample,
    brand: "Quicksilver",
    user_id: User.ids.sample,
    rate_per_day: Faker::Number.decimal,
    address: ["Greece", "Hawai", "Japan", "Madeira", "Cuba", "Berlin"].sample
  )
  gear3.photos.attach(io: File.open('app/assets/images/wet1.webp'), filename: 'photo1.jpg')
  gear3.photos.attach(io: File.open('app/assets/images/wet2.webp'), filename: 'photo1.jpg')
  gear3.photos.attach(io: File.open('app/assets/images/wet3.webp'), filename: 'photo1.jpg')
  gear3.save!
  puts "Gear3...created!"

  gear4 = Gear.new(
    title: Faker::Marketing.buzzwords,
    description: Faker::Quotes::Shakespeare.as_you_like_it_quote,
    model: Faker::Device.model_name,
    category: [ "Longboard", "Foamboard","Fish", "SUPboard", "Shortboard", "Bodyboard", "Wetsuit"].sample,
    brand: "Quicksilver",
    user_id: User.ids.sample,
    rate_per_day: Faker::Number.decimal,
    address: ["Greece", "Hawai", "Japan", "Madeira", "Cuba", "Berlin"].sample
  )
  gear4.photos.attach(io: File.open('app/assets/images/foam1.webp'), filename: 'photo1.jpg')
  gear4.photos.attach(io: File.open('app/assets/images/foam2.webp'), filename: 'photo1.jpg')
  gear4.photos.attach(io: File.open('app/assets/images/foam3.webp'), filename: 'photo1.jpg')
  gear4.save!
  puts "Gear4...created!"


  gear5 = Gear.new(
    title: Faker::Marketing.buzzwords,
    description: Faker::Quotes::Shakespeare.as_you_like_it_quote,
    model: Faker::Device.model_name,
    category: [ "Longboard", "Foamboard","Fish", "SUPboard", "Shortboard", "Bodyboard", "Wetsuit"].sample,
    brand: "Quicksilver",
    user_id: User.ids.sample,
    rate_per_day: Faker::Number.decimal,
    address: ["Greece", "Hawai", "Japan", "Madeira", "Cuba", "Berlin"].sample
  )
  gear5.photos.attach(io: File.open('app/assets/images/board1.webp'), filename: 'photo1.jpg')
  gear5.photos.attach(io: File.open('app/assets/images/board2.webp'), filename: 'photo1.jpg')
  gear5.photos.attach(io: File.open('app/assets/images/board3.webp'), filename: 'photo1.jpg')
  gear5.save!
  puts "Gear5...created!"

  gear6 = Gear.new(
    title: Faker::Marketing.buzzwords,
    description: Faker::Quotes::Shakespeare.as_you_like_it_quote,
    model: Faker::Device.model_name,
    category: [ "Longboard", "Foamboard","Fish", "SUPboard", "Shortboard", "Bodyboard", "Wetsuit"].sample,
    brand: "Quicksilver",
    user_id: User.ids.sample,
    rate_per_day: Faker::Number.decimal,
    address: ["Greece", "Hawai", "Japan", "Madeira", "Cuba", "Berlin"].sample
  )
  gear6.photos.attach(io: File.open('app/assets/images/wet1.webp'), filename: 'photo1.jpg')
  gear6.photos.attach(io: File.open('app/assets/images/wet2.webp'), filename: 'photo1.jpg')
  gear6.photos.attach(io: File.open('app/assets/images/wet3.webp'), filename: 'photo1.jpg')
  gear6.save!
  puts "Gear6...created!"

  puts "Done!"
