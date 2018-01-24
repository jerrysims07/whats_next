class AddRoomToChore < ActiveRecord::Migration
  def change
    add_reference :chores, :room, index: true
  end
end
