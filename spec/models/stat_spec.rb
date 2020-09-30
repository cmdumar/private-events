require 'rails_helper'

RSpec.describe Stat, type: :model do
    describe 'Stat associations' do
        it { should belong_to(:attended_event)}
        it { should belong_to(:attendee)}
    end
end