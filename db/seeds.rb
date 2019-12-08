# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

visitors = Visitor.create ([
	{name: 'Rose T. Watts', visitor_cardnumber: '23643'},
	{name: 'Mariela A. Daly', visitor_cardnumber: '230056'},
	{name: 'Walter S. Pendleton', visitor_cardnumber: '4867393'},
	{name: 'Virginia J. Grubbs', visitor_cardnumber: '4393'},
	{name: 'Walter Daly', visitor_cardnumber: '230'},
	{name: 'William S. Pendleton', visitor_cardnumber: '48393'},
	{name: 'Ventigo J. McCarthy', visitor_cardnumber: '86739'}
])
 
 visitors.each do |vis|
 	Cinema.create ([
 		{visitor_id: vis.id, cinema_name: 'Showcase', address: 'Bracknell', postcode: 'R3 6BL3', 
 			telephone: '0947364930'},

 		{visitor_id: vis.id, cinema_name: 'Vue', address: 'Reading', postcode: 'RG1 7GN', 
 			telephone: '021974930'},

 		{visitor_id: vis.id, cinema_name: 'Odeon Delux', address: 'Winnersh', 
 			postcode: 'RG5 8GN', telephone: '021974680'}
 	])
 end