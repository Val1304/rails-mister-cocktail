# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Creating 20 fake Ingredients...'
20.times do
  ingredient = Ingredient.new(
    name: Faker::Food.ingredient,
    )
  ingredient.save!
end

puts 'Finished'

url = "http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png"
cocktail = Cocktail.new(name: 'NES')
cocktail.remote_photo_url = url
cocktail.save
