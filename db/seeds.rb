require 'faker'

puts "Cleaning database..."
Booking.destroy_all
Gear.destroy_all
User.destroy_all



puts "Creating users..."
puts "Gear..."

21.times do
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.street_address,
    phone: Faker::PhoneNumber.cell_phone,
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
  user.save!
  rand(12).times do
    gear = Gear.new(
      title: Faker::Marketing.buzzwords,
      description: Faker::Quotes::Shakespeare.as_you_like_it_quote,
      model: Faker::Device.model_name,
      brand: Faker::Device.manufacturer,
      user_id: User.last.id,
      rate_per_day: Faker::Number.decimal(l_digits: 2),
      address: ["Paris", "Berlin", "Greece", "Lichtenstein"].sample
    )
    gear.save!
  end
end


# gear_images = []
# 60.times do
#   gear_images << Faker::LoremFlickr.image
# end
# gear_image = gear_images.sample
# # 200.times do
# #   gear = Gear.new(
# #     model: Faker::Device.model_name,
# #     brand: Faker::Device.manufacturer,
# #     user_id: User.all.sample.id,
# #     rate_per_day: Faker::Number.decimal(l_digits: 2)
# #   )
# #   gear.save!
# # end

  Board1 = Gear.new(
    title: "Nice Board for beginners",
    description: "Has a few scratches but nothing major",
    model: "Burton",
    brand: "Custom Design",
    size: "S",
    user_id: User.all.sample.id,
    rate_per_day: Faker::Number.decimal(l_digits: 2),
    address: "Berlin",
    category: "Surfboard",
  )
  Board1.save!

  Board2 = Gear.new(
    title: "For all those Wave Lovers out there",
    description: "This board is perfect for all those who want have a rad time",
    model: "Stoke Master",
    brand: "ShredLife",
    size: "XL",
    user_id: User.all.sample.id,
    rate_per_day: Faker::Number.decimal(l_digits: 2),
    category: "Surfboard",
    address: "Paris"
  )
  Board2.save!

  Board3 = Gear.new(
    title: "Cheap Board for beginners",
    description: "Good quality for a cheap price",
    model: "WaveCraft",
    brand: "Wave",
    size: "L",
    user_id: User.all.sample.id,
    rate_per_day: Faker::Number.decimal(l_digits: 1),
    category: "Surfboard",
    address: "London"
  )
  Board3.save!

  Wetsuit1 = Gear.new(
    title: "Wetsuit for women",
    description: "Perfect for all those who want to stay warm while having a rad time",
    model: "HydroFlex Elite",
    brand: "AquaTech",
    size: "M",
    user_id: User.all.sample.id,
    rate_per_day: Faker::Number.decimal(l_digits: 2),
    category: "Wetsuit",
    address: "Amsterdam"
  )
  Wetsuit1.save!

  Wetsuit2 = Gear.new(
    title: "Wetsuit for men",
    description: "Perfect for all who like to look sharp while shredding some Waves",
    model: "WaveDancer Pro",
    brand: "ShoreLine",
    size: "L",
    user_id: User.all.sample.id,
    rate_per_day: Faker::Number.decimal(l_digits: 2),
    category: "Wetsuit",
    address: "Madeira"
  )
  Wetsuit2.save!
