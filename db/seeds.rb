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

Artist.create(name: "Adele", bio: "writes soulful ballads")
Artist.create(name: "Devil Makes Three", bio: "writes toe tapping rockabilly bluegrass")
Artist.create(name: "Aotearoa", bio: "writes funk rock jams")

Genre.create(name: "pop")
Genre.create(name: "funk rock")
Genre.create(name: "bluegrass")

Song.create(name: "Someone like you", artist_id: 1, genre_id: 1)
Song.create(name: "All hail", artist_id: 2, genre_id: 3)
Song.create(name: "The Stranger", artist_id: 2, genre_id: 3)
Song.create(name: "Nuclear nowhere", artist_id: 3, genre_id: 2)
Song.create(name: "Jaguar tornado", artist_id: 3, genre_id: 2)