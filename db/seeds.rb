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

# def createBrewery(name,street,city,state,postal_code,country,longitude,latitude,phone,website_url)
#   Brewery.create(name: name,street: street,city: city,state: state,postal_code: postal_code,country: country,longitude: longitude,latitude: latitude,phone: phone,website_url: website_url)
# end
#
# breweries = RestClient.get "https://api.openbrewerydb.org/breweries?by_city=san_diego&&per_page=50"
# allBreweries = JSON.parse(breweries)
# allBreweries.each do |brewery|
#   createBrewery(brewery["name"],brewery["street"],brewery["city"],brewery["state"],brewery["postal_code"],brewery["country"],brewery["longitude"],brewery["latitude"],brewery["phone"],brewery["website_url"])
# end

# def createBrewery2(name,street,city,state,postal_code,country,longitude,latitude,phone,website_url)
#   Brewery.create(name: name,street: street,city: city,state: state,postal_code: postal_code,country: country,longitude: longitude,latitude: latitude,phone: phone,website_url: website_url)
# end
#
# breweries = RestClient.get "https://api.openbrewerydb.org/breweries?by_city=los_angeles&&per_page=50"
# allBreweries = JSON.parse(breweries)
# allBreweries.each do |brewery|
#   createBrewery2(brewery["name"],brewery["street"],brewery["city"],brewery["state"],brewery["postal_code"],brewery["country"],brewery["longitude"],brewery["latitude"],brewery["phone"],brewery["website_url"])
# end

def createBrewery3(name,street,city,state,postal_code,country,longitude,latitude,phone,website_url)
  Brewery.create(name: name,street: street,city: city,state: state,postal_code: postal_code,country: country,longitude: longitude,latitude: latitude,phone: phone,website_url: website_url)
end

breweries = RestClient.get "https://api.openbrewerydb.org/breweries?by_city=new_york&&per_page=50"
allBreweries = JSON.parse(breweries)
allBreweries.each do |brewery|
  createBrewery3(brewery["name"],brewery["street"],brewery["city"],brewery["state"],brewery["postal_code"],brewery["country"],brewery["longitude"],brewery["latitude"],brewery["phone"],brewery["website_url"])
end

def createBrewery4(name,street,city,state,postal_code,country,longitude,latitude,phone,website_url)
  Brewery.create(name: name,street: street,city: city,state: state,postal_code: postal_code,country: country,longitude: longitude,latitude: latitude,phone: phone,website_url: website_url)
end

breweries = RestClient.get "https://api.openbrewerydb.org/breweries?by_city=brooklyn&&per_page=50"
allBreweries = JSON.parse(breweries)
allBreweries.each do |brewery|
  createBrewery4(brewery["name"],brewery["street"],brewery["city"],brewery["state"],brewery["postal_code"],brewery["country"],brewery["longitude"],brewery["latitude"],brewery["phone"],brewery["website_url"])
end

def createBrewery5(name,street,city,state,postal_code,country,longitude,latitude,phone,website_url)
  Brewery.create(name: name,street: street,city: city,state: state,postal_code: postal_code,country: country,longitude: longitude,latitude: latitude,phone: phone,website_url: website_url)
end

breweries = RestClient.get "https://api.openbrewerydb.org/breweries?by_city=queens&&per_page=50"
allBreweries = JSON.parse(breweries)
allBreweries.each do |brewery|
  createBrewery5(brewery["name"],brewery["street"],brewery["city"],brewery["state"],brewery["postal_code"],brewery["country"],brewery["longitude"],brewery["latitude"],brewery["phone"],brewery["website_url"])
end

def createBrewery6(name,street,city,state,postal_code,country,longitude,latitude,phone,website_url)
  Brewery.create(name: name,street: street,city: city,state: state,postal_code: postal_code,country: country,longitude: longitude,latitude: latitude,phone: phone,website_url: website_url)
end

breweries = RestClient.get "https://api.openbrewerydb.org/breweries?by_city=bronx&&per_page=50"
allBreweries = JSON.parse(breweries)
allBreweries.each do |brewery|
  createBrewery6(brewery["name"],brewery["street"],brewery["city"],brewery["state"],brewery["postal_code"],brewery["country"],brewery["longitude"],brewery["latitude"],brewery["phone"],brewery["website_url"])
end

def createBrewery7(name,street,city,state,postal_code,country,longitude,latitude,phone,website_url)
  Brewery.create(name: name,street: street,city: city,state: state,postal_code: postal_code,country: country,longitude: longitude,latitude: latitude,phone: phone,website_url: website_url)
end

breweries = RestClient.get "https://api.openbrewerydb.org/breweries?by_city=bronx&&per_page=50"
allBreweries = JSON.parse(breweries)
allBreweries.each do |brewery|
  createBrewery7(brewery["name"],brewery["street"],brewery["city"],brewery["state"],brewery["postal_code"],brewery["country"],brewery["longitude"],brewery["latitude"],brewery["phone"],brewery["website_url"])
end

def createBrewery8(name,street,city,state,postal_code,country,longitude,latitude,phone,website_url)
  Brewery.create(name: name,street: street,city: city,state: state,postal_code: postal_code,country: country,longitude: longitude,latitude: latitude,phone: phone,website_url: website_url)
end

breweries = RestClient.get "https://api.openbrewerydb.org/breweries?by_city=long_island&&per_page=50"
allBreweries = JSON.parse(breweries)
allBreweries.each do |brewery|
  createBrewery8(brewery["name"],brewery["street"],brewery["city"],brewery["state"],brewery["postal_code"],brewery["country"],brewery["longitude"],brewery["latitude"],brewery["phone"],brewery["website_url"])
end

def createBrewery9(name,street,city,state,postal_code,country,longitude,latitude,phone,website_url)
  Brewery.create(name: name,street: street,city: city,state: state,postal_code: postal_code,country: country,longitude: longitude,latitude: latitude,phone: phone,website_url: website_url)
end

breweries = RestClient.get "https://api.openbrewerydb.org/breweries?by_state=new_york&&per_page=50"
allBreweries = JSON.parse(breweries)
allBreweries.each do |brewery|
  createBrewery9(brewery["name"],brewery["street"],brewery["city"],brewery["state"],brewery["postal_code"],brewery["country"],brewery["longitude"],brewery["latitude"],brewery["phone"],brewery["website_url"])
end

puts "Seeded AYE!"
