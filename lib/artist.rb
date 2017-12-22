require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

  include Paramable
  extend Memorable
  extend Findable
  @@artists = []

  def initialize
    self.all << self
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end
