class HomeController < ApplicationController

   def index
     @foods = current_user.foods.order(params[:sort])
   end

end
