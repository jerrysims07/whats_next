require 'rails_helper'

RSpec.describe Home, type: :model do
  describe 'associations' do
    it { should have_many(:rooms) }
  end

  describe 'instance methods' do
    describe '#current_chores' do
      let(:home) { create(:home) }
      let(:room) { create(:room, home: home) }

      context 'there are no chores at all for the house' do
        it 'should return an empty array' do
          expect(home.current_chores).to eql([])
        end
      end

      context 'there are no chores currently due' do
        let(:undue_chore) { create(:chore, :undue, room: room) }
        it 'should return an empty array' do
          expect(home.current_chores).to eql([])
        end
      end

      context 'there is at least one chore currently due' do
        let!(:due_chore) { create(:chore, :due, room: room) }

        it 'should return an array with that one chore' do
          expect(home.current_chores).to eql([due_chore])
        end

        context 'more than one' do
          context 'in the same room' do
            let!(:due_chore2) { create(:chore, :due, name: "Wipe Counters", room: room)}

            it 'should return an array with all due chores' do
              expect(home.current_chores).to eql([due_chore, due_chore2])
            end

            context 'in more than one room' do
              let(:room2) { create(:room, home: home) }
              let!(:due_chore3) { create(:chore, :due, name: "Sweep floor", room: room2) }

              it 'should return an array with all due chores' do
                expect(home.current_chores).to eql([due_chore, due_chore2, due_chore3])
              end
            end
          end
        end
      end
    end
  end
end
