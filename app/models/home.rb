class Home < ActiveRecord::Base
  has_many :rooms

  def current_chores
    chores = []
    rooms.each do |r|
      r.current_chores.each do |c|
        chores << c
      end
    end
    chores
  end
end
