class HomeController < ApplicationController

   def index

    #  @foods = current_user.foods.page(params[:page]).per(3)
   @foods = Food.where("user_id = ?", current_user.id).page(params[:page])

   end
end
