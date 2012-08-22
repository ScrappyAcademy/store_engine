# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  Category.delete_all
  Product.delete_all
  Product.create title: "J Walker", price: 24.99, description: "First Wise Man", retired: false, category_list: "alcohol"
  Product.create title: "Hendricks", price: 39.99, description: "Good with cucumbers", retired: false, category_list: "alcohol"
  Product.create title: "Romeo y Julieta", price: 8.95, description: "Disgusting", retired: false, category_list: "tobacco"
  Product.create title: "Delotted", price: 999999.99, description: "You cannot afford it", retired: false, category_list: "pharmaceuticals"
  Product.create title: "Three wolf moon shirt", price: 0.05, description: "No, just no", retired: false, category_list: "clothing"

  User.delete_all
  u = User.new
  u.email = "dutchess@isis.net"
  u.name = "Sterling Archer"
  u.password = "guestguest"
  u.save
  u = User.new
  u.email = "dolphin@isis.net"
  u.name = "Pam Poovi"
  u.password = "puppystickers"
  u.save
  u = User.new
  u.email = "iloveglue@isis.net"
  u.name = "Cheryl Tunt"
  u.password = "babootheocelot"
  u.save

