class FixRushnameTable < ActiveRecord::Migration
  def change
  	remove_column :rushnames, :task_id
  	add_column :rushnames, :user_id, :integer
  end
end
