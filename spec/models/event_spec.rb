require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'Event associations' do
    it { should belong_to(:creator) }
    it { should have_many(:stats).with_foreign_key(:event_id) }
    it { should have_many(:event_attendees).through(:stats) }
  end

  describe 'Past Events' do
    event = Event.past(Time.now).first
    it 'returns past events' do
      expect(event.date).to be <= Time.now
    end
  end

  describe 'Upcoming Events' do
    event = Event.upcoming(Time.now).first
    it 'returns upcoming events' do
      expect(event.date).to be >= Time.now
    end
  end
end
