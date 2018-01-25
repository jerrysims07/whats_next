require 'rails_helper'

RSpec.describe Chore, type: :model do
  describe 'associations' do
    it { should belong_to(:room) }
  end

  describe 'instance method' do
    describe '#due?' do
      context 'when it has been more days than frequency since last_performed' do
        let(:chore) { create(:chore, frequency: 1, last_performed: 2.days.ago) }

        it 'should return true' do
          expect(chore.due?).to eql(true)
        end
      end

      context 'when it has been exactly the number of days since last_performed' do
        let(:chore) { create(:chore, frequency: 1, last_performed: 1.day.ago) }

        it 'should return true' do
          expect(chore.due?).to eql(true)
        end
      end

      context 'when it has fewer number of days than frequency since last_performed' do
        let(:chore) { create(:chore, frequency: 3, last_performed: 1.day.ago) }

        it 'should return true' do
          expect(chore.due?).to eql(false)
        end
      end
    end
  end
end
