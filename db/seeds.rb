Gear.destroy_all
User.destroy_all
UserGear.destroy_all
Trip.destroy_all

10.times do
  User.create(username: Faker::Name.name)
end

10.times do
  Gear.create(name: Faker::Appliance.equipment, make_year: rand(1990..2021))
end

100.times do 
  UserGear.create(user: User.all.sample, gear_id: Gear.all.sample.id)
end

10.times do
  Trip.create(location: Faker::Address.city, details: Faker::Lorem.sentence(word_count: 100 ))
end