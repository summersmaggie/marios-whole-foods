class Review < ActiveRecord::Base
  belongs_to :product
  validates :author, :content_body, :rating, :presence => true
  validates :content_body, length: { in: 50..250 }
  validates :rating, numericality: { only_integer: true }
end
