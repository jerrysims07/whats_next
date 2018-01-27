class HomesController < ApplicationController
  def index
    @homes = Home.all
  end

  def show
    @home = Home.find(params[:id])
    @chores = @home.current_chores.sort_by { |chore| -chore.effective_priority }
  end
end
