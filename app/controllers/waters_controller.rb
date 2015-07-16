class WatersController < ApplicationController

  def index
    @waters = Water.all
  end

  def new
    @water = Water.new
  end

  def create
    @water = Water.new(water_params)
    @user = current_user
    current_user.waters.push(@water)
    if @water.save
      flash[:notice] = "Your goal has been added."
      current_user.total_drunk += @water.amount_drunk
      current_user.save
      respond_to do |format|
        format.html { redirect_to waters_path }
        format.js
      end
    else
      flash[:alert] = 'There was a problem adding your goal. Please try again.'
      render :new
    end
  end

private

  def water_params
    params.require(:water).permit(:amount_drunk, :goal, :user_id)
  end

end
