class Organizations < ActiveRecord::Base
	has_many :users
	has_many :rushnames
end
