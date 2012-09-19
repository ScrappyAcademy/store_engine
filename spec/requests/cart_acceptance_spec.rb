require 'spec_helper'

feature "Shopping Cart" do
  scenario "anonymous user adds products to cart", js: true do
    Product.create! title: "Red Shirt", price: 5.99, description: "A ruby red shirt."
    visit root_path
    click_on "Add to Cart"
    page.should have_content "Red Shirt added to cart."
    click_on "Shopping Cart"
    page.should have_content ""
    current_path.should eq shopping_cart_path
    page.should have_content "Red Shirt"
  end
end


# Ajax: Run specs that exercise this in JS mode (js: true)
