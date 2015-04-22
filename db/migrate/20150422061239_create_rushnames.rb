class CreateRushnames < ActiveRecord::Migration
  def change
    create_table :rushnames do |t|
      t.string :name
      t.string :photo
      t.string :email
      t.string :phone
      t.text :description

      t.timestamps
    end
  end
end
