require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  include Memorable::InstanceMethods
  extend Memorable::ClassMethods
  include Paramable
  extend Findable
  @@songs = []

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end
