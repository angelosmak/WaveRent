require 'faker'

puts "Cleaning database..."
Gear.destroy_all
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
5.times do
  gear = Gear.new(
    model: Faker::Device.model_name,
    brand: Faker::Device.manufacturer,
    user_id: User.all.sample.id,
    rate_per_day: Faker::Number.decimal(l_digits: 2)
  )
  gear.save!
end
