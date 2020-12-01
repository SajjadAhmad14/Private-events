require 'rails_helper'
RSpec.describe 'Login a user', type: :feature do
  before(:each) do
    @user = User.create(user_name: 'somename')
  end
  scenario 'valid inputs' do
    visit login_path
    fill_in 'session[user_name]', with: 'somename'
    click_on 'Submit'
    visit users_path
    expect(page).to have_content(/somename/i)
  end

  scenario 'invalid inputs' do
    visit login_path
    fill_in 'session[user_name]', with: 'nothing'
    click_on 'Submit'
    expect(page).to have_content(/Username does not exits!/i)
  end
end
