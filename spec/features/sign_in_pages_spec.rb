require 'rails_helper'

describe "the signin process", type: :feature do
  before :each do
    User.create(email: 'admin@admin.com', password: 'admin', admin: 't')
  end

  it "signs me in" do
    visit signin_path
    fill_in 'email', with: 'admin@admin.com'
    fill_in 'password', with: 'admin'
    click_button 'Log in'
    expect(page).to have_content 'Welcome Back!'
  end
end