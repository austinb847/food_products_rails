# require 'rails_helper'

# describe "the delete a product process" do
#   before :each do
#     User.create(email: 'admin@admin.com', password: 'admin', admin: 't')
#     visit signin_path
#     #click_link 'Create new product'
#     fill_in 'email', :with => 'admin@admin.com'
#     fill_in 'password', :with => 'admin'
#     click_on 'Log in'
#     visit products_path
#     #save_and_open_page
#     click_link 'Create new product'
#     fill_in 'Product Name', :with => 'Cheese'
#     fill_in 'Cost', :with => '3'
#     fill_in 'Country of Origin', :with => 'USA'
#     click_on 'Add Product'
#     #save_and_open_page
#   end

#   it "deletes a product", js: true do
#     click_link 'Cheese'
#     accept_confirm("Are you sure?") do
#       click_link 'Delete product'
#     end
#     # click_link 'Delete product'
#     # page.accept_alert 'Are you sure?' do
#     #   click_button('Ok')
#     # end
#     #page.evaluate_script('window.confirm = function() { return true; }')
#     expect(page).not_to have_content('Cheese')
#   end
# end