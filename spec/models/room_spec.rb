require 'rails_helper'

RSpec.describe Room, type: :model do
  describe 'associations:' do
    it { should have_many(:chores) }
  end

  describe 'instance methods' do
    describe '#current_chores' do
      let(:room) { create(:room) }

      context 'there are no chores at all for that room' do
        it 'should return an empty array' do
          expect(room.current_chores).to eql([])
        end
      end

      context 'there are no chores currently due' do
        let(:undue_chore) { create(:chore, :undue, room: room) }

        it 'should return an empty array' do
          expect(room.current_chores).to eql([])
        end
      end

      context 'there is at least one chore currently due' do
        let!(:due_chore) { create(:chore, :due, room: room) }

        it 'should return an array with that one chore' do
          expect(room.current_chores).to eql([due_chore])
        end

        context 'more than one' do
          let!(:due_chore2) { create(:chore, :due, name: "Wipe Counters", room: room)}

          it 'should return an array with all due chores' do
            expect(room.current_chores).to eql([due_chore, due_chore2])
          end
        end
      end
    end
  end
end
