class RoomsController < ApplicationController
  def show
    @rooms = Room.all.each do |room|
      room.current_chores.sort_by! { |c| c.effective_priority }
    end
  end
end
