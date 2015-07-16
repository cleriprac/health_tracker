class WaterUserId < ActiveRecord::Migration
  def change
  	add_column :waters, :user_id, :integer
  end
end
