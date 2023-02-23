# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'json'
require 'open-uri'

API = 'https://tmdb.lewagon.com/movie/top_rated'
data = URI.open('https://tmdb.lewagon.com/movie/top_rated').read
movies = JSON.parse(data)

movies['results'].each do |movie|
  Movie.create(
    title: movie['title'],
    overview: movie['overview'],
    rating: movie['vote_average'],
    poster_url: "https://image.tmdb.org/t/p/w500#{movie['poster_path']}"
  )
end
