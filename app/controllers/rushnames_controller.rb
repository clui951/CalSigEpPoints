class RushnamesController < ApplicationController

  def index
    @rushnames = Rushname.all
  end

	def new
    @rushname = Rushname.new
	end

  def create
    @rushname = Rushname.create(rushname_params)
    if @rushname.save
      redirect_to @rushname
    else
      render "new"
    end
  end

  def show
    @rushname = Rushname.find(params[:id])
  end

  private

  def rushname_params
    params.require(:rushname).permit(:name, :photo, :phone, :email, :description)
  end
end
