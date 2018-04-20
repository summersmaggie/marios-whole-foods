require 'rails_helper'

describe "the action of adding a product to the database" do
  it "adds a new product to the database" do
    visit '/'
    click_button 'Add a Product'
    fill_in "product[name]", :with => 'Orange Juice'
    fill_in "product[cost]", :with => 4
    fill_in "product[country_of_origin]", :with => 'United States'
    click_button 'Create Product'
    expect(page).to have_content 'Orange Juice'
  end
end
