# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

category_name = %w[Shirts Hoodies Bandanas]

category_name.each do |cat|
  category = Category.create!(name: cat)
  puts category.name
end

categories = Category.all

categories.each do |cat|
  cat.image.attach(io: File.open('app/assets/images/shirt.png'), filename: 'shirt.png', content_type: 'image/png')
end

10.times do |n|
  Product.create!(
    name: "shirt-#{n}",
    price: 1000,
    description: 'High Quality cotton shirt with best print on the market',
    category_id: 1
  )
end

p = Product.all
p.each do |prod|
  prod.image.attach(io: File.open('app/assets/images/shirt.png'), filename: 'shirt.png', content_type: 'image/png')
end
