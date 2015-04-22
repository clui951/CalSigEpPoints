class Rushname < ActiveRecord::Base
  validates :name, presence: true
  validates :photo, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :description, presence: true
end
