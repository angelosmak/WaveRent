require 'faker'

puts "Cleaning database..."
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
    )
    gear.save!
  end
end

gear_images = []
60.times do
  gear_images << Faker::LoremFlickr.image
end
gear_image = gear_images.sample
# 200.times do
#   gear = Gear.new(
#     model: Faker::Device.model_name,
#     brand: Faker::Device.manufacturer,
#     user_id: User.all.sample.id,
#     rate_per_day: Faker::Number.decimal(l_digits: 2)
#   )
#   gear.save!
# end
