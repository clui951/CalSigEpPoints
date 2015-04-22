# == Schema Information
#
# Table name: tasks
#
#  id         :integer          not null, primary key
#  title      :text
#  comment    :text
#  value      :integer
#  created_at :datetime
#  updated_at :datetime
#  task_type  :string(255)
#  user_id    :integer
#

require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
