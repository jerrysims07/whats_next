class ChorePrerequisitesController < ApplicationController
  def new
    @chore = Chore.find(params[:chore])
    @potential_prereqs = @chore.room.chores.select { |chore| chore != @chore }
  end

  def create
    @chore = Chore.find(prereq_params[:chore_id])
    @chore_prerequisite = nil
    prereq_ids = prereq_params[:prerequisite_ids]
    unless prereq_ids.nil?
      prereq_ids.each do |pr_id|
        @chore_prerequisite = ChorePrerequisite.create(chore_id: @chore.id, prerequisite_id: pr_id)
      end
    end
    redirect_to chore_meta_url(@chore)
  end

  private

  def prereq_params
    params.require(:chore_prerequisite).permit(:chore_id, prerequisite_ids: [])
  end
end
