class CreateReimbursements < ActiveRecord::Migration
  def change
    create_table :reimbursements do |t|
      t.string :item
      t.string :date
      t.string :cost
      t.string :VP

      t.timestamps
    end
  end
end
