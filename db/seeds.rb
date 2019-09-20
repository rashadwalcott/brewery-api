# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Brewery.destroy_all
require 'rest-client'
require 'json'

def createBrewery(name,street,city,state,postal_code,country,longitude,latitude,phone,website_url)
  Brewery.create(name: name,street: street,city: city,state: state,postal_code: postal_code,country: country,longitude: longitude,latitude: latitude,phone: phone,website_url: website_url)
end

breweries = RestClient.get "https://api.openbrewerydb.org/breweries?by_city=san_diego&&per_page=50"
allBreweries = JSON.parse(breweries)
allBreweries.each do |brewery|
  createBrewery(brewery["name"],brewery["street"],brewery["city"],brewery["state"],brewery["postal_code"],brewery["country"],brewery["longitude"],brewery["latitude"],brewery["phone"],brewery["website_url"])
end

puts "Seeded AYE!"
