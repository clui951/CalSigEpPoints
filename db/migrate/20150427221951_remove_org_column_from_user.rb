class RemoveOrgColumnFromUser < ActiveRecord::Migration
  def change
  	remove_column :users, :organization
  end
end
