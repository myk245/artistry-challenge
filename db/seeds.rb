Artist.destroy_all
Instrument.destroy_all
Song.destroy_all 

a1 = Artist.create(name: "Michael Jackson", age: rand(50), title: "King of Pop")
a2 = Artist.create(name: "Stevie Wonder", age: rand(50), title: "Little Stevie Wonder")
a3 = Artist.create(name: "Elvis Presley", age: rand(50), title: "the King")
a4 = Artist.create(name: "Whitney Houston", age: rand(50), title: "The Voice")
a5 = Artist.create(name: "Beyoncé", age: rand(50), title: "Destiny's Child")

i1 = Instrument.create(name: "Guitar", classification: "Strings")
i2 = Instrument.create(name: "Violin", classification: "Strings")
i3 = Instrument.create(name: "Flute", classification: "Woodwind")
i4 = Instrument.create(name: "Xylophone", classification: "Percussion")

s1 = Song.create(name: "I love you", artist: a1, instrument: i1)
s2 = Song.create(name: "Hello Beautiful", artist: a5, instrument: i4)
s3 = Song.create(name: "Wouldn't You Know It", artist: a2, instrument: i1)
s4 = Song.create(name: "Ello", artist: a3, instrument: i2)
s5 = Song.create(name: "ABC", artist: a4, instrument: i3)
s6 = Song.create(name: "XYZ", artist: a5, instrument: i2)
s7 = Song.create(name: "123", artist: a2, instrument: i4)
s8 = Song.create(name: "Peek", artist: a3, instrument: i3)