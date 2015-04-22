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

class Task < ActiveRecord::Base
	belongs_to :user
end

# Task.where(:user => user1) 		get all tasks under user1
# task1.user = user1 				put task1 under user1