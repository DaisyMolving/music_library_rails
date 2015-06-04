# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.delete_all
Album.delete_all
Genre.delete_all
Song.delete_all

ar1 = Artist.create(name: "Herbie Hancock")
ar2 = Artist.create(name: "Billie Holiday")
ar3 = Artist.create(name: "David Bowie")
ar4 = Artist.create(name: "Bootsy's Rubber Band")


g1 = Genre.create(name: "Jazz")
g2 = Genre.create(name: "Blues")
g3 = Genre.create(name: "Rock")
g4 = Genre.create(name: "Funk")


al1 = ar3.albums.create(genre_id: g3.id, name: "Low")
al2 = ar3.albums.create(genre_id: g3.id, name: "Hunky Dory")
al3 = ar2.albums.create(genre_id: g1.id, name: "The Very Best of Billie Holiday") #and g2
al3 << (genre_id: g2.id)
al4 = ar2.albums.create(genre_id: g1.id, name: "Velvet Mood") #and g2
al4 << (genre_id: g2.id)
al5 = ar2.albums.create(genre_id: g1.id, name: "Body and Soul") #and g2
al5 << (genre_id: g2.id)
al6 = ar3.albums.create(genre_id: g3.id, name: "The Best of David Bowie") #and g2

al7 = ar1.albums.create(genre_id: g1.id, name: "Takin' Off")
al8 = ar1.albums.create(genre_id: g1.id, name: "Thrust") #and g4
al9 = ar1.albums.create(genre_id: g1.id, name: "Head Hunters") #and g4
al10 = ar4.albums.create(genre_id: g4.id, name: "Stretchin' Out")




s1 = al1.songs.create(name: "Speed of Life")
s2 = al1.songs.create(name: "Breaking Glass")
s3 = al1.songs.create(name: "What in the World")
s4 = al1.songs.create(name: "Sound and Vision") #and al6
s5 = al1.songs.create(name: "Always Crashing in the Same Car")
s6 = al1.songs.create(name: "Be My Wife")
s7 = al1.songs.create(name: "A New Career in a New Town")
s8 = al2.songs.create(name: "Changes") #and al6
s9 = al2.songs.create(name: "Oh You Pretty Things") #and al6
s10 = al2.songs.create(name: "Life On Mars") #and al6
s11 = al2.songs.create(name: "Bewlay Brothers")
s12 = al2.songs.create(name: "Song for Bob Dylan")
s13 = al6.songs.create(name: "Ziggy Stardust")
s14 = al6.songs.create(name: "Space Oddity")
s15 = al4.songs.create(name: "Prelude to a Kiss")
s16 = al3.songs.create(name: "Nice Work If You Can Get it") #and al4
s17 = al4.songs.create(name: "When Your Lover Has Gone")
s18 = al5.songs.create(name: "Body and Soul")
s19 = al5.songs.create(name: "Darn That Dream")
s20 = al5.songs.create(name: "Let's Call the Whole Thing Off")
s21 = al5.songs.create(name: "Comes Love")
s22 = al3.songs.create(name: "Strange Fruit")
s23 = al3.songs.create(name: "Me, Myself and I")
s24 = al7.songs.create(name: "Watermelon Man") #and al9
s25 = al7.songs.create(name: "Me and I")
s26 = al7.songs.create(name: "Empty Pockets")
s27 = al9.songs.create(name: "The Maze")
s28 = al9.songs.create(name: "Chameleon")
s29 = al9.songs.create(name: "Sly")
s30 = al9.songs.create(name: "Vein Melter")
s31 = al8.songs.create(name: "Palm Grease")
s32 = al8.songs.create(name: "Actual Proof")
s33 = al8.songs.create(name: "Spank-A-Lee")
s34 = al10.songs.create(name: "Psychoticbumpschool")
s35 = al10.songs.create(name: "I'd Rather Be With You")
s36 = al10.songs.create(name: "Physical Love")
s37 = al10.songs.create(name: "Vanish in Our Sleep")
s38 = al10.songs.create(name: "Love Vibes")
s39 = al10.songs.create(name: "Stretchin' Out (In a Rubber Band)")
s40 = al10.songs.create(name: "Another Point of View")


puts "seeded!"