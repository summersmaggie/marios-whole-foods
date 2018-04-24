require 'faker'

Product.destroy_all
Review.destroy_all

50.times do |index|
  Product.create!(name: Faker::Food.ingredient,
                            cost: Faker::Number.decimal(2),
                            country_of_origin: Faker::Address.country)
  @product_id = Product.last.id
  5.times do |index|
    Review.create!(author: Faker::RickAndMorty.character,
                    content_body: Faker::RickAndMorty.quote,
                    rating: Faker::Number.between(1, 5),
                    product_id: @product_id)
  end
end

p "Created #{Product.count} products"
p "Created #{Review.count} reviews"
