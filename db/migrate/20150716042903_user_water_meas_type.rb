class UserWaterMeasType < ActiveRecord::Migration
  def change
  	add_column :users, :goal_measurement_type, :string
  end
end
