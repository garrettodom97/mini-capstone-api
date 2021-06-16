# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product = Product.new(name: "Les Paul Guitar", price: 1600, image_url: "", description: "White Les Paul guitar with dual humbuckers and gold hardware")
product.save

product = Product.new(name: "HP Omen 15", price: 1000, image_url: "", description: "A sick gaming laptop with a 120 Hz screen, a Ryzen 7 processor, and an Nvidia 1660 GTX GPU")
product.save

prodcut = Product.new(name: "Yeti Tumbler", price: 30, image_url: "", description: "Stainless steel 32 oz tumbler with a lid")
product.save
