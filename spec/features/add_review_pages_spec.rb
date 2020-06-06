require 'rails_helper'

describe "the add a review to a product process" do
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
  end

  it "adds a new review" do
    click_link 'Cheese'
    click_link 'Add a review'
    fill_in 'Author Name', :with => 'James Smith'
    select '1', :from => 'review[rating]'
    fill_in 'Review Content', :with => 'blablabl blablab alblalba ablalblab ablablalb albalbl ablalbalb ablab alba blab abla balb ablab lab'
    click_on 'Add Review'
    expect(page).to have_content 'James Smith'
  end
end