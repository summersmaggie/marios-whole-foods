require 'faker'

Product.destroy_all
Review.destroy_all

50.times do |index|
  product = Product.create!(name: Faker::Food.ingredient,
                            cost: Faker::Number.decimal(2),
                            country_of_origin: Faker::Address.country)
  5.times do |index|
    Review.create!(author: Faker::RickAndMorty.character,
                    content_body: Faker::Lorem.characters(75),
                    rating: Faker::Number.between(1, 5),
                    product_id: product.id)
  end
end

p "Created #{Product.count} products"
p "Created #{Review.count} reviews"
