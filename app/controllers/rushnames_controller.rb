class RushnamesController < ApplicationController
  def index
    @rushnames = Rushname.where(organization: current_user.organization)
  end

	def new
    @rushname = Rushname.new
	end

  def create
    @rushname = Rushname.create(rushname_params)
    @rushname.organization = current_user.organization
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

  def upload
  uploaded_io = params[:name][:photo]
  File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
    file.write(uploaded_io.read)
  end
end

end
