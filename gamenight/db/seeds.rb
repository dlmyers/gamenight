# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Event.delete_all
Friend.delete_all

Event.create!(name: 'Charades',
    date: '10/31/2015',
    location: '1323 Parsons Ave, Campbell 95008',
    description: 'Xmas Eve party')
    
Event.create!(name: 'Karaoke',
    date: '12/25/2015',
    location: '1323 Parsons Ave, Campbell 95008',
    description: 'Xmas Eve party')
    
Event.create!(name: 'Risk',
    date: '11/31/2015',
    location: '1323 Parsons Ave, Campbell 95008',
    description: 'Xmas Eve party')
    
Friend.create!(name: 'Nico',
    email: 'nico@gmail.com',
    created_by: 'mcristiani')