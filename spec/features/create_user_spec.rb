require 'rails_helper'
RSpec.describe 'Create a user', type: :feature do
  scenario 'valid inputs' do
    visit new_user_path
    fill_in 'user[user_name]', with: 'Sajjad'
    fill_in 'user[email]', with: 'jogimar14@gmail.com'
    click_on 'Submit'
    visit users_path
    expect(page).to have_content('sajjad')
  end

  scenario 'invalid inputs' do
    visit new_user_path
    fill_in 'user[user_name]', with: ''
    fill_in 'user[email]', with: ''
    click_on 'Submit'
    visit new_user_path
    expect(page).to have_content("Email can't be blank")
    expect(page).to have_content("User name can't be blank")
  end
end