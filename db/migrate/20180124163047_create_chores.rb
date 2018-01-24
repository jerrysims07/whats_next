class CreateChores < ActiveRecord::Migration
  def change
    create_table :chores do |t|
      t.text :name
      t.integer :frequency
      t.date :last_performed
      t.integer :priority

      t.timestamps null: false
    end
  end
end
