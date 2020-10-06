require 'rails_helper'

RSpec.describe Stat, type: :model do
  describe 'Stat associations' do
    it { should belong_to(:event) }
    it { should belong_to(:user) }
  end
end
