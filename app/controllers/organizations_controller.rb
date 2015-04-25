class OrganizationsController < ApplicationController
  def index
    @organization = Organization.find(current_user.organization)
    @members = User.where(organization: @organization.id).find_each
    @reiumbursements = Reimbursement.where(organization: @organization.id).find_each
  end

  def new
    @organization = Organization.new
    if not current_user
      redirect_to '/auth/google_oauth2'
    end
  end

  def joinexisting
  end

  def create
    @organization = Organization.new(organization_params)
    if @organization.save
      current_user.organization = @organization
      current_user.save
      redirect_to @organization
    else
      render "new"
    end
  end

  def show
    @organization = Organization.find(params[:id])
    if not current_user.organization 
      current_user.organization = @organization
      current_user.save
    end
  end

  def all
  end

  private

  def organization_params
    params.require(:organization).permit(:name)
  end
end
