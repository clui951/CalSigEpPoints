class OrganizationsController < ApplicationController
  def index
		@organizations = Organizations.all
	end

	def new
		@organization = Organizations.new
	end

	def create
		@organization = Organizations.create(organization_params)
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
		params.require(:organizations).permit(:title, :comment, :value)
	end
end
