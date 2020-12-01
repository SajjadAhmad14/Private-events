require 'rails_helper'
RSpec.describe 'Logout a user', type: :feature do
  before(:each) do
    @user = User.create(user_name: 'somename')
  end
  scenario 'user can be logout' do
    visit login_path
    fill_in 'session[user_name]', with: 'somename'
    click_button 'Submit'
    click_on 'Sign Out'
    expect(page).to have_content('You have successfully logged out.')
  end
end
