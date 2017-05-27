# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 User.create!([
  #user
  { email: "user@suspender.com",  role: :user, password: "qwer1234", password_confirmation: "qwer1234"},

  #Admins
  { email: "admin@suspender.com", role: :admin, password: "qwer1234", password_confirmation: "qwer1234"},
])