class Chore < ActiveRecord::Base
  belongs_to :room

  validates :room_id, presence: true

  def days_overdue
    days_since_last_performed = (Date.today - last_performed).to_i
    days_since_last_performed > frequency ? (days_since_last_performed - frequency) : 0
  end

  def due?
    (Date.today - last_performed).to_i >= frequency
  end

  def effective_multiplier
    return 0 unless due?
    return multiplier ** ((Date.today - last_performed).truncate - frequency)
  end

  def effective_priority
    priority * effective_multiplier
  end
end
