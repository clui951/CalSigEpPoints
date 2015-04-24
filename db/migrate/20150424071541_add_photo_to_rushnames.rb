class AddPhotoToRushnames < ActiveRecord::Migration
  def change
    add_column :rushnames, :photo, :string
  end
end
