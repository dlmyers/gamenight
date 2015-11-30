# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Event.delete_all
Friend.delete_all
Invite.delete_all

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
    
Friend.create!(name: 'Nico',
    email: 'nico@gmail.com',
    created_by: '1')

Friend.create!(name: 'Don',
    email: 'don@example.com',
    created_by: '2')

Friend.create!(name: 'Joe',
    email: 'joe@example.com',
    created_by: '1')

Friend.create!(name: 'Sam',
    email: 'sam@example.com',
    created_by: '2')