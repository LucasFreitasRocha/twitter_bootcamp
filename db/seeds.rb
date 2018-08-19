# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  20.times.each do |n|
      user = User.create(email: "user.numero#{n + 1 }@email.com", password: '123456')
    10.times do |x|
      user.tweets.create(content: "Hello #{x + 1}")
    end
  end
