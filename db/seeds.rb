# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Deleting restaurants'
Restaurant.destroy_all
puts 'Creating restaurants...'
restaurants = [
  {
    name: 'Costes',
    address: 'Paris',
    category: 'French',
    phone_number: '12345'
  },
  {
    name: 'Pizza East',
    address: '56A Shoreditch High St, London E1 6PQ',
    category: 'Italian',
    phone_number: '12345'
  },
  {
    name: 'Cecconis',
    address: 'Berlin',
    category: 'Italian',
    phone_number: '12345'
  },
  {
    name: 'Nobu',
    address: 'Malibu',
    category: 'Japanese',
    phone_number: '12345'
  },
  {
    name: 'Madeo',
    address: 'LA',
    category: 'Italian',
    phone_number: '12345'
  }
]
Restaurant.create(restaurants)
puts "Finished! #{Restaurant.all.count}"
