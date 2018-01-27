class Room < ActiveRecord::Base
  has_many :chores
  belongs_to :home

  def current_chores
    chores.select { |c| c.due? }
  end
end
