class FixAllErroneousTables < ActiveRecord::Migration
  def change
  	remove_column :rushnames, :user_id
  	add_column :rushnames, :organization_id, :integer
  	add_column :tasks, :user_id, :integer
  	remove_column :tasks, :organization_id
  end
end
