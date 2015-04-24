class RemovePhotoFromRushnames < ActiveRecord::Migration
  def change
    remove_column :rushnames, :photo, :string
  end
end
