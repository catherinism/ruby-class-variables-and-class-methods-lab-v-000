class Song

  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)

    @name=name
    @artist=artist
    @genre=genre
    @@count += 1
    @@artists << artist
    @@genres << genre

  end

def self.count
  @@count
end

def self.artists
  @@artists.uniq!

end

def self.genres
  @@genres.uniq!

end

def @@genre_count
  @@genre_count.each do |genre, count|
    puts "#{genre}: #{count}"
  end

end

end
