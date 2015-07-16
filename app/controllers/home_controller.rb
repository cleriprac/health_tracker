class HomeController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
     @foods = Food.where("user_id = ?", current_user.id).order(params[:sort] + ' ' + params[:direction]).paginate(:page => params[:food_page]).per_page(10)
     @exercises = Exercise.where("user_id = ?", current_user.id).order(params[:sort] + ' ' + params[:direction]).paginate(:page => params[:exercise_page]).per_page(10)
    @waters = Water.where("user_id = ?", current_user.id).order(params[:sort] + ' ' + params[:direction]).paginate(:page => params[:wate_page]).per_page(10)
  end

private

  def sort_column
    params[:sort] || "name"
  end

  def sort_direction
    params[:direction] || "asc"
  end


end
