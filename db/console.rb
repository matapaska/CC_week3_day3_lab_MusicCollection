require('pry-byebug')
require_relative('../models/album.rb')
require_relative('../models/artist.rb')

Album.delete_all()
Artist.delete_all()

artist1 = Artist.new({'name' => 'LionX'})
artist2 = Artist.new({'name' => 'TigerY'})
artist1.save()
artist2.save()

album1 = Album.new({
  'artist_id' => artist1.id,
  'title'=> 'Lion Music',
  'genre'=> 'roar'
})
album1.save()

album2 = Album.new({
  'artist_id' => artist2.id,
  'title'=> 'Tiger Music',
  'genre'=> 'roar'
})
album2.save()

album3 = Album.new({
  'artist_id' => artist2.id,
  'title'=> 'Tiger Music 2',
  'genre'=> 'roar'
})
album3.save()

binding.pry
nil
