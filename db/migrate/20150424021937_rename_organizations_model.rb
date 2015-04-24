class RenameOrganizationsModel < ActiveRecord::Migration
  def change
  	rename_table :Organizations, :Organization
  end
end
