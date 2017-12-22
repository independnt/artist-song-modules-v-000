require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  include Paramable
  extend Memorable
  extend Findable
  @@songs = []

  def initialize
    @@songs << self
  end

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end
