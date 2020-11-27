require 'rails_helper'

RSpec.describe User, type: :model do
  it 'Create a new data container' do
    user = User.new(name: 'abc', email: 'abc@abc.com')
    expect(user).to be_a_new(User)
  end

  it 'User is valid if a name and email attributes are present' do
    user = User.new(name: 'abc', email: 'abc@abc.com')
    expect(user).to be_valid
  end

  it 'User is not valid without name attribute' do
    user = User.new(name: nil)
    expect(user).to_not be_valid
  end

  it 'User is not valid without email attribute' do
    user = User.new(email: nil)
    expect(user).to_not be_valid
  end
end
