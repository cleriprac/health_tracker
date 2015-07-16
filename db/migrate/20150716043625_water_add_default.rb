class WaterAddDefault < ActiveRecord::Migration
  def change
  	change_column :users, :water_goal, :integer, :default => 0
  end
end
