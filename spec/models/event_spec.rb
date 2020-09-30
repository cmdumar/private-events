require 'rails_helper'

RSpec.describe Event, type: :model do
    describe 'Event associations' do
        it { should belong_to(:creator)}
        it { should have_many(:stats).with_foreign_key(:attended_event_id) }
        it { should have_many(:event_attendees).through(:stats)}
    end
end