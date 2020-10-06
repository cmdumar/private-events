require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User associations' do
    it { should have_many(:events).with_foreign_key(:creator_id) }
    it { should have_many(:stats).with_foreign_key(:user_id) }
    it { should have_many(:events_attended).through(:stats) }
  end
end
