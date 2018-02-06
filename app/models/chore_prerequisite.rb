class ChorePrerequisite < ActiveRecord::Base
  belongs_to :chore
  belongs_to :prerequisite, class_name: "Chore"

  validates :prerequisite, uniqueness: { scope: :chore }
end
