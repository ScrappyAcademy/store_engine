require 'spec_helper'

feature "Retire product" do
  scenario "administrator retires a product", js: true do
    Product.create! title: "Red Shirt", price: 5.99, description: "A ruby red shirt."
    visit product_path
    page.should have_content "Red Shirt"
    page.should have_content "false"
    click_link "Edit"
    check "Retired"
    click_on "Save"
    page.should have_content "true"
    current_path.should eq product_path
  end
end
