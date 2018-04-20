require 'rails_helper'

describe "the action of adding a review to a product" do
  it "adds a new review to a product" do
    visit '/products/:id'
    click_button 'Add Review'
    fill_in "review[author]", :with => 'Maggie'
    fill_in "review[content_body]", :with => 'Good'
    fill_in "review[rating]", :with => '4'
    click_button 'Create Review'
    expect(page).to have_content 'Good'
  end
end
