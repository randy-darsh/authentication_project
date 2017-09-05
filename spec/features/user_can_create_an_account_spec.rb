require 'rails_helper'

RSpec.describe 'User can create an account' do
  scenario 'user creates an account' do
    visit new_user_path
    save_and_open_page
    fill_in "Name", with: 'Dude'
    fill_in "Email", with: 'whatever@whatever.com'
    fill_in "Password", with: 'password'
    click_button 'Create User'

    expect(page).to have_content('Welcome, Dude')
  end
end
