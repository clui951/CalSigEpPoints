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

class Rushname < ActiveRecord::Base

  mount_uploader :photo, PhotoUploader

  validates :name, presence: true
  validates :photo, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :description, presence: true
  belongs_to :organization
end
