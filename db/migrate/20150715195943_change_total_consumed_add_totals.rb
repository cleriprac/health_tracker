class ChangeTotalConsumedAddTotals < ActiveRecord::Migration
  def change
    remove_column :users, :total_consumed
    add_column :users, :total_consumed, :integer
    add_column :users, :total_spent, :integer
    add_column :users, :total_gained, :integer
  end
end
