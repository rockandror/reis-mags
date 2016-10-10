# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 User.create!([
  #Owners
  { name: "Name1", lastname: "Lastname1", email: "email1@example.com",  role: :owner, password: "qwer1234", password_confirmation: "qwer1234"},
  { name: "Name2", lastname: "Lastname2", email: "email12@example.com", role: :owner, password: "qwer1234", password_confirmation: "qwer1234"},
  { name: "Name3", lastname: "Lastname3", email: "email13@example.com", role: :owner, password: "qwer1234", password_confirmation: "qwer1234"},
  { name: "Name4", lastname: "Lastname4", email: "email14@example.com", role: :owner, password: "qwer1234", password_confirmation: "qwer1234"},
  { name: "Name5", lastname: "Lastname5", email: "email15@example.com", role: :owner, password: "qwer1234", password_confirmation: "qwer1234"},
  { name: "Name6", lastname: "Lastname6", email: "email16@example.com", role: :owner, password: "qwer1234", password_confirmation: "qwer1234"},
  { name: "Name7", lastname: "Lastname7", email: "email17@example.com", role: :owner, password: "qwer1234", password_confirmation: "qwer1234"},
  { name: "Name8", lastname: "Lastname8", email: "email18@example.com", role: :owner, password: "qwer1234", password_confirmation: "qwer1234"},

  #Admins
  { name: "Senén",      lastname: "Rodero", email: "senenrodero@gmail.com",   role: :admin, password: "qwer1234", password_confirmation: "qwer1234"},
  { name: "Sebastià",   lastname: "Roig", email: "sebastia.roig@gmail.com",   role: :admin, password: "qwer1234", password_confirmation: "qwer1234"},
  { name: "Alessandro", lastname: "Cuoghi", email: "agileontheweb@gmail.com", role: :admin, password: "qwer1234", password_confirmation: "qwer1234"},
  { name: "Admin",      lastname: "Company", email: "info@admin.com",         role: :admin, password: "qwer1234", password_confirmation: "qwer1234"},
])