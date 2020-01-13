# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'database_cleaner'
DatabaseCleaner.clean_with(:truncation)

Artist.destroy_all
Song.destroy_all
Genre.destroy_all

# Artist
a1 = Artist.create(name: "Adele", bio: "Adele Laurie Blue Adkins MBE is an English singer-songwriter. After graduating from the BRIT School in 2006, Adele signed a recording contract with XL Recordings. In 2007, she received the Brit Awards Critics' Choice award and won the BBC Sound of 2008 poll.")
a2 = Artist.create(name: "Rihanna", bio: "Robyn Rihanna Fenty is a Barbadian singer, songwriter, fashion designer, actress and businesswoman, who has been recognized for embracing various musical styles and reinventing her image throughout her career.")

# Genre
g1 = Genre.create(name: "pop")
g2 = Genre.create(name: "rap")

# Song
s1 = Song.create(name: "Rolling In The Deep", artist_id: a1.id, genre_id: g1.id)
s2 = Song.create(name: "Umbrella", artist_id: a2.id, genre_id: g2.id)