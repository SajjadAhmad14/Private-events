require 'rails_helper'

RSpec.describe Event, type: :model do
  let(:user) {User.new(user_name:'subject')}
  it 'Create a new data container' do
    event = Event.new(name: 'new', date: '2020-02-02', description: 'new event')
    expect(event).to be_a_new(Event)
  end

  it 'Event is valid if a name, descrption, and date attributes are present' do
    event = user.created_events.new(name: 'new', date: '2020-02-02', description: 'new event', creator_id: 1)
    expect(event).to be_valid
  end

  it 'Event is not valid without name attribute' do
    event = user.created_events.new(name: nil)
    expect(event).to_not be_valid
  end
  
  it 'Event is not valid without date attribute' do
    event = user.created_events.new(date: nil)
    expect(event).to_not be_valid
  end
  
  it 'Event is not valid without name attribute' do
    event = user.created_events.new(description: nil)
    expect(event).to_not be_valid
  end
  
  it 'Event is not valid without creator_id attribute' do
    event = user.created_events.new(creator_id: nil)
    expect(event).to_not be_valid
  end
end