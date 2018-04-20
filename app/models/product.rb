class Product < ActiveRecord::Base
  has_many :reviews
  validates :name, :cost, :country_of_origin, :presence => true

  scope :most_reviews, -> {(
    select("products.id, products.name, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count DESC")
    .limit(5))}

  scope :made_in_USA, -> { where(country_of_origin: 'USA') }
end
