# == Schema Information
#
# Table name: rushnames
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  photo       :string(255)
#  email       :string(255)
#  phone       :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class RushnameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
