class ReimbursementsController < ApplicationController

	def index
		org = current_user.organization
		# @reimbursements = Reimbursement.find_by(organization_id: org)
		@reimbursements = Reimbursement.all
	end

	def new
		@reimbursement = Reimbursement.new
	end

	def create
		@reimbursement = Reimbursement.create(reimbursement_params)
		if @reimbursement.save
			redirect_to @reimbursement
		else
			render "new"
		end
	end

	def show
		@reimbursement = Reimbursement.find(params[:id])
	end

	private

	def reimbursement_params
		params.require(:reimbursement).permit(:item, :date, :cost, :VP)
	end

end
