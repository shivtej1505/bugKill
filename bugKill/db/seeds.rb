# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create(username:'shivtej',password:'pass',email:'shivang.nagaria@gmail.com')
u2 = User.create(username:'depo',password:'pass',email:'depo.jain@gmail.com')

u1.projects.create(name:'Project 1',description:'This is a demo description')
u2.projects.create(name:'Project 2',description:'This is the description by depo.')
