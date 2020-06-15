require 'rails_helper'

describe "the edit a review process" do
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
    click_link 'Cheese'
    click_link 'Add a review'
    fill_in 'Author Name', :with => 'James Smith'
    select '1', :from => 'review[rating]'
    fill_in 'Review Content', :with => 'blablabl blablab alblalba ablalblab ablablalb albalbl ablalbalb ablab alba blab abla balb ablab lab'
    click_on 'Add Review'
  end

  it "edits a review" do
    click_link 'James Smith'
    click_link 'Edit Review'
    fill_in 'Author Name', :with => 'Austin Butler'
    select '1', :from => 'review[rating]'
    fill_in 'Review Content', :with => 'blablabl blablab alblalba ablalblab ablablalb albalbl ablalbalb ablab alba blab abla balb ablab lab'
    click_on 'Edit Review'
    expect(page).to have_content 'Austin Butler'
  end
end