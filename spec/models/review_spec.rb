require 'rails_helper'

describe Review do
  it { should validate_presence_of :author }
  it { should validate_presence_of :content_body }
  it { should validate_presence_of :rating }

  it { should belong_to :product }

  it("should have a content body length between 50 and 250 characters") do
    new_review = Review.new(:author => "Summers", :content_body => "Parks and Rec is a great show.", :rating => 5)
    expect(new_review.save).to eq(false)
  end
end
