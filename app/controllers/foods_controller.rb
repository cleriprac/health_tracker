class FoodsController < ApplicationController

  def index
    @foods = Food.all
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    current_user.foods.push(@food)
    if @food.save
      flash[:notice] = "Your food has been added."
      current_user.total_consumed += @food.calories
      current_user.save
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    else
      flash[:alert] = 'There was a problem adding your food. Please try again.'
      render :new
    end
  end

  # def update
  #   @food = Food.find(params[:id])
  #
  #
  #   respond_to do |format|
  #     format.js
  #   end
  # end



private

  def food_params
    params.require(:food).permit(:name, :calories, :user_id)
  end

end
