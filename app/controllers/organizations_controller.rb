class OrganizationsController < ApplicationController
  def index
		@organization = current_user.find(params[:organization])
	end

	def new
		@organization = Organizations.new
		if not current_user
			redirect_to '/auth/google_oauth2'
		end
	end

	def create
		@organization = Organizations.new(organization_params)
		# @organization.name = organization_params[:name]
		if @organization.save
			redirect_to @organization
		else
			render "new"
		end
	end

	def show
		@organization = Organizations.find(params[:id])
	end

	private

	def organization_params
		params.require(:organizations).permit(:name)
	end
end
