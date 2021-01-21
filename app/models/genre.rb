class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    songs.length
    # return the number of songs in a genre
  end

  def artist_count
      # binding.pry
      artists.length
    # return the number of artists associated with the genre
  end

  def all_artist_names
    artists.map{|artist| artist.name}
    # binding.pry
    # return an array of strings containing every musician's name
  end
end
