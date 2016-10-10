# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 User.create!([
  #Owners
  { email: "email1@example.com",  role: :owner, password: "qwer1234", password_confirmation: "qwer1234"},
  { email: "email12@example.com", role: :owner, password: "qwer1234", password_confirmation: "qwer1234"},
  { email: "email13@example.com", role: :owner, password: "qwer1234", password_confirmation: "qwer1234"},
  { email: "email14@example.com", role: :owner, password: "qwer1234", password_confirmation: "qwer1234"},
  { email: "email15@example.com", role: :owner, password: "qwer1234", password_confirmation: "qwer1234"},
  { email: "email16@example.com", role: :owner, password: "qwer1234", password_confirmation: "qwer1234"},
  { email: "email17@example.com", role: :owner, password: "qwer1234", password_confirmation: "qwer1234"},
  { email: "email18@example.com", role: :owner, password: "qwer1234", password_confirmation: "qwer1234"},

  #Admins
  { email: "senenrodero@gmail.com",   role: :admin, password: "qwer1234", password_confirmation: "qwer1234"},
  { email: "sebastia.roig@gmail.com",   role: :admin, password: "qwer1234", password_confirmation: "qwer1234"},
  { email: "agileontheweb@gmail.com", role: :admin, password: "qwer1234", password_confirmation: "qwer1234"},
  { email: "info@admin.com",         role: :admin, password: "qwer1234", password_confirmation: "qwer1234"},
])