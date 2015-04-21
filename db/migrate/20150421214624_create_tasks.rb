class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :title
      t.text :comment
      t.integer :value

      t.timestamps
    end
  end
end
