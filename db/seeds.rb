# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
menu_item_list = [
  [ "Appetizers", 10.50, "Artichoke Dip" ],
  ["Appetizers", 9.50, "Chips" ],
  [ "Appetizers", 11.75, "Grilled Octopus"],
  [ "Appetizers", 10.00, "Bruschetta"],
  [ "Drinks" , 6.50, "Old-Fashioned" ],
  [ "Drinks" , 8.50, "Moscow Mule" ],
  [ "Drinks" , 6.50, "Last Word" ],
  [ "Drinks" , 7.50, "Margarita" ],
  [ "Entrees" , 21.50, "Grilled Salmon" ],
  [ "Entrees" , 22.50, "Steak" ],
  [ "Entrees" , 15.50, "Taco Platter" ],
  [ "Entrees" , 20.50, "Alaskan Snow Crab" ],
]

menu_item_list.each do |category, price, name|
  MenuItem.create( category: category, price: price,  name: name)
end

server_list = [
  'Gwen Stefani',
  'Taylor Swift',
  'Jack White',
  'Freddie Mercury',
]

server_list.each do |name|
  Server.create( name: name )
end
