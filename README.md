# Mario's Whole Foods - Ruby on Rails - Week 1

#### _By Maggie Summers_

## Description

_A website created using Ruby on Rails that displays products from Mario's Whole Foods, as well as reviews associated with those products._

##  Specifications
Landing Page:
    * The landing page includes basic information about the company and allows users to easily navigate to other areas of the site. This page also includes the three most recently added products and the product with the most reviews.

Products
    * The site includes a list of the tasty products that Mario sells. Each product is be clickable with a detail view. Site admins are able to add, update and delete new products. Users can click on an individual product to see its detail page, and they can add a review to a product.

Scopes
    * Users can view: The product with the most reviews, the three most recently added products, and all products made in the USA for buyers that want to buy local products.

Validations
    * The following are validated: All fields should be filled out, including rating, rating can only be an integer between 1 and 5, and the review's content_body must be between 50 and 250 characters.

Seeding
    * The project is seeded for 50 products and 250 reviews using Faker.

## Installation

  1. _`$ git clone https://github.com/summersmaggie/marios-whole-foods`_

  2. _`$ cd marios-whole-foods`_

  3. _`$ bundle install`_

  4. _`$ rake db:create`_

  5. _`$ rake db:migrate db:test:prepare`_

  6. _`$ rake db:seed`_

  7. _`$ rails server`_

#### Development server

Run `rails server` for a dev server. Navigate to `http://localhost:3000/`. The app will automatically reload if you change any of the source files.

## Known Bugs

  _No known bugs at this time._

## Support and contact details

  _To suggest changes, submit a pull request in the GitHub repository._

## Technologies Used

  * HTML
  * CSS/Bootstrap
  * Ruby
  * Rails
  * ActiveRecord

### License

  *MIT License*

Copyright (c) 2018 **Maggie Summers**
