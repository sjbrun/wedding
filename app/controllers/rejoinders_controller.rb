class RejoindersController < ApplicationController
  ### Convention methods order ==> Index, Show, New, Edit, Create, Update, Destroy
  include RejoindersHelper

  def index
    @rsvps = Rejoinder.all
    @total = total_attending(@rsvps)
    @fri, @sat, @sun = tally(@rsvps)
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
      redirect_to root_path
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

end