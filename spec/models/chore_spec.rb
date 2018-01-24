require 'rails_helper'

RSpec.describe Chore, type: :model do
  describe 'associations' do
    it { should belong_to(:room) }
  end
end
