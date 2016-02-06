# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user                       = User.new
user.email                 = "asdfasdf@gmail.com"
user.password              = "asdfasdf"
user.password_confirmation = "asdfasdf"
user.admin                 = true
user.save
