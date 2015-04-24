class FixColumnNameForOrganizations < ActiveRecord::Migration
  def change
  	rename_column :organizations, :organization, :name
  end
end
