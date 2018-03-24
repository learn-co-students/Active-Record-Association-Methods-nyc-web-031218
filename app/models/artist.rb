class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

    # create_table "artists", force: :cascade do |t|
    #   t.string "name"
    # end
    #
    # create_table "genres", force: :cascade do |t|
    #   t.string "name"
    # end
    #
    # create_table "songs", force: :cascade do |t|
    #   t.string  "name"
    #   t.integer "artist_id"
    #   t.integer "genre_id"
    # end

  def get_genre_of_first_song
    #return the genre of the artist's first saved song
    songs.first.genre
  end

  def song_count
    #return the number of songs associated with the artist
    songs.size
  end

  def genre_count
    #return the number of genres associated with the artist
    genres.size
  end
end
