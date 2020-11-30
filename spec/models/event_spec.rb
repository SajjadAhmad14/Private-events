require 'rails_helper'

RSpec.describe Event, type: :model do
  let(:user) { User.new(user_name: 'subject') }
  it 'Create a new data container' do
    event = Event.new(name: 'new', date: '2020-02-02', description: 'new event')
    expect(event).to be_a_new(Event)
  end

  it 'Event is valid if a name, descrption, and date attributes are present' do
    user = User.create(user_name: 'unknown')
    creator_id = user.id
    event = user.created_events.new(name: 'new', date: '2020-02-02', description: 'new event', creator_id: creator_id)
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

  it 'Event has many event_attendences' do
    expect(Event.reflect_on_association(:event_attendences).macro).to eq(:has_many)
  end

  it 'Event has many event_attendees' do
    expect(Event.reflect_on_association(:event_attendees).macro).to eq(:has_many)
  end

  it 'Event belongs to a creator' do
    expect(Event.reflect_on_association(:creator).macro).to eq(:belongs_to)
  end
end
