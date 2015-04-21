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
#

class Task < ActiveRecord::Base
	belongs_to :user
end
