# Chapter 1

## Symbols vs Strings

* Immedediate objects are faster than non-immediate objects

* Confusion probably comes due to popular rails methods using `ActiveSupport::HashWithIndifferentAccess`.
This allows you to use either symbols or strings.

* String = series of chracters or bytes

* Symbol = a number with an attached inditifier that is a series of characters or bytes

* Symbols for when you need and identifier like configuration options

* Strings for when you are dealing with text or data

## Arrays, Hashes, and Sets - How to use

* List of values ? Array

* Mapping of objects ? Hash

* Large list uniqueness ? Set

## Hashing a database

### Setup

```ruby
album_infos = 100.times.flat_map do |i|
    10.times.map do |j|
        ["Album #{i}", j, "Artist #{j}"]
    end
end
```

### Nested Hash

```ruby
albums = {}
album_infos.each do |album, track, artist|
    ((albums[album] ||= {})[track] ||= []) << artist
end
```

### Better Approach

```ruby
album_artists = {}
alubum_infos.each do |_, _, artist|
    album_artists[artist] ||= true
end

def lookup(artists)
end
```
