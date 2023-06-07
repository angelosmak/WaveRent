require 'faker'

puts "Cleaning database..."
Booking.destroy_all
Gear.destroy_all
User.destroy_all
# User.destroy_all

puts "Creating users..."
puts "Gear..."



5.times do
  user = User.new(
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
  user.save!
end

  Board1 = Gear.new(
    title: "Nice Board for beginners",
    description: "Has a few scratches but nothing major",
    model: "Burton",
    brand: "Custom Design",
    size: "S",
    user_id: User.all.sample.id,
    rate_per_day: Faker::Number.decimal(l_digits: 2),
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
    category: "Surfboard"
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
  )
  Wetsuit2.save!
