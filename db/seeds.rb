# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.destroy_all
Product.destroy_all

perfumes=Category.create(name: "Perfumes")
libros=Category.create(name: "Libros")
tecnología=Category.create(name: "Tecnología")
electrodomésticos=Category.create(name: "Electrodomésticos")
aseo=Category.create(name: "Aseo")
ropa=Category.create(name: "Ropa")
juguetes=Category.create(name: "Juguetes")
ropa=Category.create(name: "Ropa")
oficina=Category.create(name: "Oficina")
mascotas=Category.create(name: "Mascotas")

Product.create( name: "Computador", price: "200", categories: Category.where(name:["Tecnología", "Oficina"]) )
