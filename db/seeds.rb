# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'Derek Weber', :email => 'user@example.com', :password => 'foobar', :password_confirmation => 'foobar'
admin = User.create! :name => 'Adam Mark', :email => 'adam@example.com', :password => 'foobar', :password_confirmation => 'foobar'
puts 'New user created: ' << user.name
puts 'New user created: ' << admin.name

pages = Page.create([{title: 'Home', publish: true},{title: 'Sound', publish: true},{title: 'Visions', publish: true},{title: '?', publish: true},{title: 'Space', publish: true},{title: 'Time', publish: true}])
