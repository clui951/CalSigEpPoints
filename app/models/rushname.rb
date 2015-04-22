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

class Rushname < ActiveRecord::Base
  validates :name, presence: true
  validates :photo, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :description, presence: true
end
