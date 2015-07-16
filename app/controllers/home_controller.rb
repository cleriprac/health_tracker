class HomeController < ApplicationController

  def index
    if current_user
      @foods = Food.where("user_id = ?", current_user.id).order(sort_column + ' ' + sort_direction).paginate(:page => params[:food_page]).per_page(10)
      @exercises = Exercise.where("user_id = ?", current_user.id).order(sort_column + ' ' + sort_direction).paginate(:page => params[:exercise_page]).per_page(10)
      @waters = Water.where("user_id = ?", current_user.id).order(sort_column + ' ' + sort_direction).paginate(:page => params[:water_page]).per_page(10)
    end
  end

private
  def sort_column
    params[:sort] || "name"
  end

  def sort_direction
    params[:direction] || "desc"
  end
end
