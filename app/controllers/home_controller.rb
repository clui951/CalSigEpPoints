class HomeController < ApplicationController 
	
	def index
		if current_user
			if not current_user.organization
				redirect_to organizations_new_path
			end
		end
	end
	
end