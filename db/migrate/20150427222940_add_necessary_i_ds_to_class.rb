class AddNecessaryIDsToClass < ActiveRecord::Migration
  def change
  	add_column :users, :organization_id, :integer
  	# add_column :tasks, :user_id, :integer
  	add_column :rushnames, :task_id, :integer
  	add_column :reimbursements, :user_id, :integer
  	add_column :reimbursements, :organization_id, :integer
  end
end
