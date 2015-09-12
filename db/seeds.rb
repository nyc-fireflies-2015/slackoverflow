# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = []

50.times{users << User.build(username:Faker::Internet.user_name, password: "test")}

users.each{|u| u.questions.create(title:Faker::Company.catch_phrase, body: Faker::Lorem.paragraphs)}
