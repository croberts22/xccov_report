# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'

file = open('db/seed_data/seed.json')
json_string = file.read
json = JSON.parse(json_string)

target_array = json['targets']
target_array.each do |target|
  target['files'].each do |file|
    file['functions'].each do |function|
      Function.make_function(function)
    end
  end
end
