require 'rails_helper'

RSpec.describe Chore, type: :model do
  describe 'associations' do
    it { should belong_to(:room) }
  end

  describe 'instance method' do
    describe '#days_overdue' do
      context 'when the chore is not due' do
        let(:chore) { create(:chore, :undue)}

        it 'should return 0' do
          expect(chore.days_overdue).to eql(0)
        end
      end

      context 'when the chore is due' do
        context 'today' do
          let(:chore) { create(:chore, last_performed: 2.days.ago, frequency: 2) }

          it 'should return 0' do
            expect(chore.days_overdue).to eql(0)
          end
        end
      end
    end

    describe '#due?' do
      context 'when it has been more days than frequency since last_performed' do
        let(:chore) { create(:chore, frequency: 1, last_performed: 2.days.ago) }

        it 'should return true' do
          expect(chore.due?).to eql(true)
        end
      end

      context 'when it has been exactly the number of days since last_performed' do
        let(:chore) { create(:chore, frequency: 1, last_performed: Date.today.prev_day) }

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

    describe '#effective_multiplier' do
      context 'when the chore is not due' do
        let(:undue_chore) { create(:chore, :undue) }

        it 'should return -1' do
          expect(undue_chore.effective_multiplier).to eql(0)
        end
      end

      context 'when the chore is due today' do
        let(:due_chore) { create(:chore, :due_today) }

        it 'should return 0' do
          expect(due_chore.effective_multiplier).to eql(1)
        end
      end

      context 'when the chore was due before today' do
        let(:due_chore) { create(:chore, last_performed: Date.today - 4.days, frequency: 2, multiplier: 1.5) }

        it 'should return the number of days overdue' do
          expect(due_chore.effective_multiplier).to eql(2.25)
        end
      end
    end

    describe '#effective_priority' do
      context 'when there is no multiplier specified' do
        let(:chore) { create(:chore, :due, priority: 140)}

        it 'returns the value of the priority attribute' do
          expect(chore.effective_priority).to eql(chore.priority)
        end
      end

      context 'when there is a multiplier specified' do
        let(:chore) { create(:chore, priority: 200, multiplier: 1.5, frequency: 2, last_performed: (Date.today - 2.days)) }

        it 'returns the value of the priority raised to the effective_multiplier-th power' do
          expect(chore.effective_priority).to eql(200)
        end
      end
    end
  end
end
