# == Schema Information
#
# Table name: reimbursements
#
#  id         :integer          not null, primary key
#  item       :string(255)
#  date       :string(255)
#  cost       :string(255)
#  VP         :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Reimbursement < ActiveRecord::Base
  belongs_to :user
  belongs_to :organization
end
