# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p '🐒 creating seeds....'
3.times do
  u = User.create!(email: Faker::Internet.email,
                      password: '123456')

  r = Room.new(name: Faker::Quote.robin)
  r.user = u
  r.save

  m = Message.new(content: Faker::Quote.yoda)
  m.user = u
  m.room = r
  m.save
end

puts "added #{User.count} users, #{Room.count} rooms, #{Message.count} messages"
