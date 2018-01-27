class AddHomeToRoom < ActiveRecord::Migration
  def change
    add_reference :rooms, :home, index: true
  end
end
