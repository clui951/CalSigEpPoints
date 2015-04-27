class FixRushnameTableAgain < ActiveRecord::Migration
  def change
  	remove_column :tasks, :user_id
  	add_column :tasks, :organization_id, :integer
  end
end
