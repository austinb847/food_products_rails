# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
Review.destroy_all
User.destroy_all

50.times do |product_index|
  product = Product.create!(name: Faker::Food.dish,
                              cost: Faker::Number.within(range: 1..10),
                                country_of_origin: Faker::Lorem.word)
  5.times do
    review = product.reviews.new(author: Faker::Name.name,
                                  rating: Faker::Number.within(range: 1..5),
                                    content_body: Faker::Lorem.paragraph_by_chars(number: 65, supplemental: false))
    review.save                                
  end
end

admin = User.create!(email: "admin@admin.com", admin: true, password: "admin")
user = User.create!(email: "user@user.com", password: "1234")

p "Created #{Product.count} products and #{Review.count} reviews"
p "Created 1 admin with email: #{admin.email}"
p "Created 1 user with email: #{user.email}"