# frozen_string_literal: true

require 'faker'

Array.instance_eval do 
  def second
  end
end

album_infos = 100.times.flat_map do |_i|
  album = Faker::Music.album
  artist = Faker::Music.band
  10.times.map do |j|
    [album, j, artist]
  end
end

albums = {}
album_infos.each do |album, track, artist|
  ((albums[album] ||= {})[track] ||= []) << artist
end

# puts albums.first
#
# puts albums.second

