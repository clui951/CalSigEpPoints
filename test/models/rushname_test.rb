# == Schema Information
#
# Table name: rushnames
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  email       :string(255)
#  phone       :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#  photo       :string(255)
#  user_id     :integer
#

require 'test_helper'

class RushnameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
