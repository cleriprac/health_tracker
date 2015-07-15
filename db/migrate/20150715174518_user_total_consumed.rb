class UserTotalConsumed < ActiveRecord::Migration
  def change
    change_column :users, :total_consumed, :integer, :default => 0
  end
end
