require 'rails_helper'

RSpec.describe User, type: :model do
  it "Create a new data container" do
    @user = User.new
    expect(@user).to be_a_new(User)
  end
end
