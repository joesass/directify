# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
george_lucas = Director.create(name: 'George Lucas', year_born: 1944, hometown: "Modesto, CA")
scifi = Genre.create(name: 'Scifi')
star_wars = Movie.create( title: 'Star Wars', director_id: 1, genre_id: 1 )
