# == Schema Information
#
# Table name: organizations
#
#  id   :integer          not null, primary key
#  name :string(255)
#

class Organization < ActiveRecord::Base
	has_many :users
	has_many :rushnames
	has_many :reiumbursements
end
