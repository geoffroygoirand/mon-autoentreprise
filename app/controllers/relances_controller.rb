class RelancesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @user = current_user
  end

  def new
    @relance = Relance.new
  end

  def create
    @relance = Relance.new(relance_params)
    @relance.user_id = current_user
    if @relance.save

        redirect_to relance_path(@relance)

    else
        render "new"
    end
  end

  respond_to :docx


  def show
    @relance = Relance.find(params[:id])

    respond_to do |format|
    format.docx do
      render docx: 'relance.docx.erb', filename: 'my_file.docx'
      # Alternatively, if you don't want to create the .docx.erb template you could
    end
  end
  end


  private

  def relance_params
     params.require(:relance).permit(:name, :creance, :creance_at, :user_id)
  end
end


