class ChoresController < ApplicationController

  def edit
    @chore = Chore.find(params[:id])
    @chore.update_attributes(last_performed: chore_params[:last_performed])
  end

  def update
    @chore = Chore.find(params[:id])
    @chore.update_attributes(chore_params)
    @chore.reload
    redirect_to action: "meta", id: @chore.id
  end

  def dismiss_chore
    @chore = Chore.find(params[:id])
  end

  def meta
    @chore = Chore.find(params[:id])
    @other_chores = @chore.room.chores.select { |c| c != @chore }.sort_by{ |c| -c.effective_priority }
  end

  private

  def chore_params
    params.require(:chore).permit(:frequency, :last_performed, :multiplier, :name, :priority, :room_id)
  end
end
