class ExercisesController < ApplicationController

  def index
    @exercises = Exercise.all
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new(exercise_params)
    current_user.exercises.push(@exercise)
    if @exercise.save
      flash[:notice] = "Your exercise has been added."
      current_user.total_spent += @exercise.calories
      current_user.net_total -= @exercise.calories
      current_user.save
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    else
      flash[:alert] = 'There was a problem adding your exercise. Please try again.'
      render :new
    end
  end

private

  def exercise_params
    params.require(:exercise).permit(:name, :calories, :user_id)
  end

end
