require 'rails_helper'
RSpec.describe 'Create a user', type: :feature do
  scenario 'valid inputs' do
    visit new_user_path
    fill_in 'user[user_name]', with: 'Sajjad'
    click_on 'Submit'
    visit users_path
    expect(page).to have_content('sajjad')
  end

  scenario 'invalid inputs' do
    visit new_user_path
    fill_in 'user[user_name]', with: ''
    click_on 'Submit'
    expect(page).to have_content("User name can't be blank")
  end
end
