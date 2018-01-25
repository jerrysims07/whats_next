class Chore < ActiveRecord::Base
  belongs_to :room

  def due?
    (Date.today - self.last_performed).to_i >= frequency
  end
end
