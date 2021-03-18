# Add seed data here. Seed your database with `rake db:seed`

Artist.destroy_all
Song.destroy_all
Genre.destroy_all
SongGenre.destroy_all

a1 = Artist.create(name: "Triston", age: 23)
a2 = Artist.create(name: "Adri", age: 30)
a3 = Artist.create(name: "Brian", age: 25)
a4 = Artist.create(name: "Cori", age: 25)

s1 = Song.create(name: "Set me free", release_year: 2019, artist_id: a1.id)
s2 = Song.create(name: "Poison", release_year: 2020, artist_id: a2.id)
s3 = Song.create(name: "Sweet Home Alabama", release_year: 2000, artist_id: a3.id)
s4 = Song.create(name: "Love me tender", release_year: 1990, artist_id: a4.id)

g1 = Genre.create(name: "techno")
g2 = Genre.create(name: "pop")
g3 = Genre.create(name: "folk")
g4 = Genre.create(name: "90")

sg1 = SongGenre.create(song_id: s1.id, genre_id: g1.id)
sg2 = SongGenre.create(song_id: s2.id, genre_id: g2.id)
sg3 = SongGenre.create(song_id: s3.id, genre_id: g3.id)
sg4 = SongGenre.create(song_id: s4.id, genre_id: g4.id)