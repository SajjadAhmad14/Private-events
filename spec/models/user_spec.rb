require 'rails_helper'

RSpec.describe User, type: :model do
  
  it 'Create a new data container' do
    user = User.new(user_name: 'abc')
    expect(user).to be_a_new(User)
  end

  it 'User is valid if a name attribute is present' do
    user = User.new(user_name: 'abc')
    expect(user).to be_valid
  end


  it 'User is not valid without name attribute' do
    user = User.new(user_name: nil)
    user.downcase
    expect(user).to_not be_valid
  end
  
  it 'User name should be unique' do
    user = User.new(user_name: 'sajjad')
    duplicate_user = User.new(user_name: 'sajjad')
    expect(duplicate_user.valid?).to be_falsy
  end

end

