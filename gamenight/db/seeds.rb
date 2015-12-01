# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Event.delete_all
Invite.delete_all
User.delete_all 

Event.create!(name: 'Charades',
    date: Time.now + 1,
    location: '1323 Parsons Ave, Campbell 95008',
    description: 'Xmas Eve party',
    user_id: '1')
    
Event.create!(name: 'Karaoke',
    date: Time.now + 1,
    location: '1323 Parsons Ave, Campbell 95008',
    description: 'Xmas Eve party',
    user_id: '1')
    
Event.create!(name: 'Risk',
    date: Time.now + 1,
    location: '1323 Parsons Ave, Campbell 95008',
    description: 'Xmas Eve party',
    user_id: '2')
    
User.create!(name: 'Nico',
    email: 'nico@gmail.com',
    password: "password",
    created_by_id: '1')

User.create!(name: 'Don',
    email: 'don@example.com',
    password: "password",
    created_by_id: '2')

User.create!(name: 'Joe',
    email: 'joe@example.com',
    password: "password",
    created_by_id: '1')

User.create!(name: 'Sam',
    email: 'sam@example.com',
    password: "password",
    created_by_id: '2')