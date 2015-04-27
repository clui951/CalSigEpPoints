# == Schema Information
#
# Table name: reimbursements
#
#  id              :integer          not null, primary key
#  item            :string(255)
#  date            :string(255)
#  cost            :string(255)
#  VP              :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  user_id         :integer
#  organization_id :integer
#

require 'test_helper'

class ReimbursementTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
