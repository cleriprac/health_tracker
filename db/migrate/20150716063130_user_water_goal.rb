class UserWaterGoal < ActiveRecord::Migration
  def change
  	add_column :waters, :goal, :integer
  end
end
