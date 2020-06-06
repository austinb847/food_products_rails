require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit signin_path
    #click_link 'Create new product'
    fill_in 'email', :with => 'admin@admin.com'
    fill_in 'password', :with => 'admin'
    click_on 'Log in'
    visit products_path
    #save_and_open_page
    click_link 'Create new product'
    fill_in 'Product Name', :with => 'Cheese'
    fill_in 'Cost', :with => '3'
    fill_in 'Country of Origin', :with => 'USA'
    click_on 'Add Product'

    expect(page).to have_content 'Cheese'
  end
end