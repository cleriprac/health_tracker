class UserWater < ActiveRecord::Migration
  def change
  	add_column :users, :water_goal, :integer
  end
end
