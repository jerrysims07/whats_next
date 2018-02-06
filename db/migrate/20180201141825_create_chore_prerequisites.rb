class CreateChorePrerequisites < ActiveRecord::Migration
  def change
    create_table :chore_prerequisites do |t|
      t.integer :chore_id
      t.integer :prerequisite_id
    end
  end
end
