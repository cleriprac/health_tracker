class UserTotalConsumeed < ActiveRecord::Migration
  def change
    add_column :users, :total_consumed, :integer
  end
end
