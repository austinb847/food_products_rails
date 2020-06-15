require 'rails_helper'

describe "the edit a product process" do
  before :each do
    User.create(email: 'admin@admin.com', password: 'admin', admin: 't')
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
    #save_and_open_page
  end

  it "edits a product" do
    click_link 'Cheese'
    click_link 'Edit Product'
    fill_in 'Product Name', :with => 'String Cheese'
    fill_in 'Cost', :with => '2'
    fill_in 'Country of Origin', :with => 'China'
    click_on 'Edit Product'
    expect(page).to have_content 'String Cheese'
  end
end