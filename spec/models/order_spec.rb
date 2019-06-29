require 'rails_helper'

RSpec.describe Order, type: :model do
  describe 'associations' do
    it { should belong_to(:menu) }
    it { should belong_to(:user) }
  end
end