class ChoresController < ApplicationController
  def edit
    @chore = Chore.find(params[:id])
    @chore.update_attributes(last_performed: chore_params[:last_performed])
  end

  def update
    @chore = Chore.find(params[:id])
    @chore.update_attributes(last_performed: chore_params[:last_performed])
    @chore.reload
  end

  def dismiss_chore
    @chore = Chore.find(params[:id])
  end
  private

  def chore_params
    params.require(:chore).permit(:last_performed)
  end
end
