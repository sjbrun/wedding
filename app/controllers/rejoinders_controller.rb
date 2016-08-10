class RejoindersController < ApplicationController
  ### Convention methods order ==> Index, Show, New, Edit, Create, Update, Destroy

  def index
    @rsvps = Rejoinder.all
  end
  
  def show
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
    params.require(:rejoinder).permit(:names, :number, :yes, :no, :msg)
  end

end