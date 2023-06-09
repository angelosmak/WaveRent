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
    photo: "https://picsum.photos/200/300"
  )
  user.save!
end

  5.times do
    gear = Gear.new(
      title: Faker::Marketing.buzzwords,
      description: Faker::Quotes::Shakespeare.as_you_like_it_quote,
      model: Faker::Device.model_name,
      category: [ "Longboard", "Foamboard","Fish", "SUPboard", "Shortboard", "Bodyboard", "Wetsuit"].sample,
      brand: "Quicksilver",
      user_id: User.ids.sample,
      rate_per_day: Faker::Number.decimal,
      address: ["Paris", "Berlin", "Greece", "Lichtenstein"].sample,
      photos: ["https://picsum.photos/200/300", "https://picsum.photos/200/300", "https://picsum.photos/200/300" ]
    )
    gear.save!
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
