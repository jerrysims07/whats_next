class AddMultiplierToChores < ActiveRecord::Migration
  def change
    add_column :chores, :multiplier, :decimal, default: 1.00
  end
end
