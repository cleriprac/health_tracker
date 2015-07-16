class UserWaterDrunk < ActiveRecord::Migration
  def change
  	add_column :users, :total_drunk, :integer
  end
end
