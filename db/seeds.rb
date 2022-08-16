CATEGORIES = [
  "Vehículos",
  "Inmuebles",
  "Supermercado",
  "Tecnología",
  "Hogar y Muebles",
  "Electrodomésticos",
  "Herramientas",
  "Construcción",
  "Deportes y Fitness",
  "Accesorios para Vehículos",
  "Moda",
  "Juegos y Juguetes",
  "Bebés",
  "Belleza y Cuidado Personal",
  "Salud y Equipamiento Médico",
  "Industrias y Oficinas",
  "Agro",
  "Productos Sustentables",
  "Servicios"]
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Price.destroy_all
Product.destroy_all
Category.destroy_all
User.destroy_all


CATEGORIES.each do |title|
  category = Category.create(title: title)
    
  # rand(3..11).times do |i|
  #   created_at = Time.now - i.days,
  #   updated_at = Time.now - i.days,
    # product = Product.create(
    #   title: Faker::Game.title,
    #   category: category,
    #   created_at: created_at,
    #   updated_at: updated_at,
    #   views: rand(50..999)
    # )
    # main_price = rand(200..1000)
    # rand(5..25).times do |d|
    #   created_at_d = Time.now - d.days,
    #   updated_at_d = Time.now - d.days,
    #   price = Price.create(
    #     product: product,
    #     sales: rand(5..30),
    #     rate: rand(3..10),
    #     price: main_price + rand(50..500),
    #     created_at: created_at_d,
    #     updated_at: updated_at_d,
    #   )
    # end
  # end
end

user = User.create(email: "admin@ahorramais.com", password: "ahorramais321")
product = Product.create(
  title: "iPhone XR",
  category: Category.find_by(title: "Tecnología"),
  image_link: "https://s3.amazonaws.com/arc-wordpress-client-uploads/infobae-wp/wp-content/uploads/2018/09/20095113/iPhone-XR2.jpg",
  views: rand(50..999)
)
main_price = rand(200..1000)
rand(5..15).times do |d|
  created_at_d = Time.now - d.days,
  updated_at_d = Time.now - d.days,
  price = Price.create(
    product: product,
    sales: rand(5..30),
    rate: rand(3..10),
    price: main_price + rand(50..500),
    created_at: created_at_d,
    updated_at: updated_at_d,
  )
end