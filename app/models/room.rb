class Room < ActiveRecord::Base
  has_many :chores

  def current_chores
    chores.select { |c| c.due? }
  end
end
