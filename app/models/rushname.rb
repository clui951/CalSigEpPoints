class Rushname < ActiveRecord::Base
  validates :name, presence: true
end
