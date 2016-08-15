class RejoindersController < ApplicationController
  ### Convention methods order ==> Index, Show, New, Edit, Create, Update, Destroy
  include RejoindersHelper
  before_action :require_admin, only: [:index]

  def index
    @rsvps = Rejoinder.all
    @total = total_attending(@rsvps)
    @fri, @sat, @sun = tally(@rsvps)
  end
  
  def show
    @rsvp = Rejoinder.find(params[:id])
  end
  
  def new
    @rsvp = Rejoinder.new
  end

  def edit
  end

  def create
    @rsvp = Rejoinder.new(rejoinder_params)
    if @rsvp.save
      flash[:success] = "Thank you for the RSVP!"
      redirect_to rejoinder_path(@rsvp)
    else
      flash[:danger] = "Something went wrong"
      render 'new'
    end
  end

  def update
  end

  private  ## private functions

  def rejoinder_params
    params.require(:rejoinder).permit(:names, :number, :yes, :no, :msg, :friday, :saturday, :sunday)
  end
  
  def require_admin
    unless current_user.try(:admin?)
      flash[:error] = "You must be admin to access this section"
      redirect_to root_path
    end
  end

end