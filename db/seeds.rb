# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Seller.destroy_all
User.destroy_all

Seller.create(
  name: "Armando",
  last_name: "Lasauca",
  nif: "46464646L",
  email: "ar@armando.com",
  telephone1: "656919674",
  telephone2: "932000202",
  idioma: "Català",
);

Seller.create(
  name: "Dani",
  last_name: "Palau",
  nif: "46457746L",
  email: "ar@palau.com",
  telephone1: "656915554",
  telephone2: "932555202",
  idioma: "Inglés",
);

Seller.create(
  name: "Mariona",
  last_name: "Casagran",
  nif: "46488846L",
  email: "ar@marions.com",
  telephone1: "656919000",
  telephone2: "932000333",
  idioma: "Sueco",
);

User.create(
  email: "test@test.com",
  password: "12345678"
)
