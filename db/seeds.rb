# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Seller.destroy_all
Buyer.destroy_all
Property.destroy_all
Portfolio.destroy_all


admin = User.create(
  email: "test@t.com",
  password: "12345678"
)

consultant1 = User.create(
  email: "consultant1@c.com",
  password: "12345678"
)
consultant2 = User.create(
  email: "consultant2@c.com",
  password: "12345678"
)
consultant3 = User.create(
  email: "consultant3@c.com",
  password: "12345678"
)

seller1 = Seller.create(
  name: "Armando",
  last_name: "Lasauca",
  nif: "46464646L",
  email: "ar@armando.com",
  telephone1: "656919674",
  telephone2: "932000202",
  idioma: "Català",
  user_id: consultant1.id
)

seller2 = Seller.create(
  name: "Dani",
  last_name: "Palau",
  nif: "46457746L",
  email: "ar@palau.com",
  telephone1: "656915554",
  telephone2: "932555202",
  idioma: "Inglés",
  user_id: consultant1.id
)

seller3 = Seller.create(
  name: "Mariona",
  last_name: "Casagran",
  nif: "46488846L",
  email: "ar@marions.com",
  telephone1: "656919000",
  telephone2: "932000333",
  idioma: "Sueco",
  user_id: consultant1.id
)

buyer1 = Buyer.create(
  name: "Jose",
  last_name: "Massana",
  nif: "46464646L",
  email: "jose@armando.com",
  telephone1: "656919674",
  telephone2: "932000202",
  idioma: "Español",
  user_id: consultant2.id
)

buyer2 = Buyer.create(
  name: "Juan",
  last_name: "Massana",
  nif: "46464646L",
  email: "juan@armando.com",
  telephone1: "656919674",
  telephone2: "932000202",
  idioma: "Català",
  user_id: consultant2.id
)

property1 = Property.create(
  title: "Piso bonito",
  subtitle: "Piso bastante completo",
  description: "Piso bastante completo y más texto",
  size: "100",
  address: "av. diagonal 330",
  city: "Barcelona",
  country: "España",
  operation_type: "Venta",
  extras: "chimenea, terraza",
  user_id: consultant3.id
)
property2 = Property.create(
  title: "Piso precioso",
  subtitle: "Piso bastante completo",
  description: "Piso bastante completo y más texto",
  size: "120",
  address: "Av. Castellana 230",
  city: "Madrid",
  country: "España",
  operation_type: "Venta",
  extras: "chimenea, terraza",
  user_id: consultant3.id
)

property3 = Property.create(
  title: "Piso requeteprecioso",
  subtitle: "Piso super completo",
  description: "Piso bastante completo y más texto",
  size: "126",
  address: "Av. Castellana 230",
  city: "Barcelona",
  country: "España",
  operation_type: "Venta",
  extras: "chimenea, terraza",
  user_id: consultant3.id
)


seller1.portfolios.create(property_id: property1.id)
seller2.portfolios.create(property_id: property1.id)
seller3.portfolios.create(property_id: property2.id)
seller3.portfolios.create(property_id: property3.id)
