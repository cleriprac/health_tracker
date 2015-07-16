class UserWaterDrunkDefault < ActiveRecord::Migration
  def change
  	change_column :users, :total_drunk, :integer, :default => 0
  end
end
