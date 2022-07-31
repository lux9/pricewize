# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Price.destroy_all
Product.destroy_all

(1..40).each do |i|
  created_at = Time.now - i.days,
  updated_at = Time.now - i.days,
  product = Product.create(
    title: "Product #{i}",
    created_at: created_at,
    updated_at: updated_at,
  )
  main_price = rand(200..1000)
  rand(5..25).times do |d|
    created_at_d = Time.now - d.days,
    updated_at_d = Time.now - d.days,
    price = Price.create(
      product: product,
      sales: rand(5..30),
      rate: rand(3..10),
      price: main_price + rand(50..200),
      created_at: created_at_d,
      updated_at: updated_at_d,
    )
  end
end