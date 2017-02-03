# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
30.times do
  Director.create(name: Faker::Name.name ,
  year_born: Faker::Date.backward(40000).year,
  hometown: Faker::Address.city)
end

15.times do
  Genre.create(name: Faker::Hipster.word)
end

70.times do
  Movie.create( title: Faker::Book.title, director_id: (1 + rand(30)), genre_id: 1 + (rand(15)) )
end
