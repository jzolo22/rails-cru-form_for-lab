# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all
Genre.destroy_all
Song.destroy_all

a1 = Artist.create(name: "Eminem", bio: "8 mile some other stuff ")
a2 = Artist.create(name: "Adele", bio: "Wrote Hello")
pop = Genre.create(name: "pop")
rock = Genre.create(name: "rock")
rap = Genre.create(name: "rap")

s1 = Song.create(name: "Hello", genre_id: pop.id, artist_id: a2.id)
s2 = Song.create(name: "8 Mile", genre_id: rap.id, artist_id: a1.id)



