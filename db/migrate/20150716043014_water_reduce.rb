class WaterReduce < ActiveRecord::Migration
  def change
  	remove_column :waters, :measurement_type
  	remove_column :waters, :goal
  end
end
