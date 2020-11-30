require 'rails_helper'
RSpec.describe 'Login a user and create an event', type: :feature do
  before(:each) do
    @user = User.create(user_name: 'somename')
  end
  scenario 'create an event while login' do
    visit login_path
    fill_in 'session[user_name]', with: 'somename'
    click_button 'Submit'
    visit users_path
    expect(page).to have_content(/somename/i)
    visit new_event_path
    expect(page).to have_content('Create an Event')
    fill_in 'event[name]', with: 'somename'
    fill_in 'event[date]', with: '2020-02-02'
    fill_in 'event[description]', with: 'something'
    click_button 'Submit'
    expect(page).to have_content('somename')
  end

end