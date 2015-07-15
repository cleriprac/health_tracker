class ChangeTotals < ActiveRecord::Migration
  def change
    remove_column :users, :total_spent
    remove_column :users, :total_gained
    remove_column :users, :net_total
    add_column :users, :total_gained, :integer, :default => 0
    add_column :users, :total_spent, :integer, :default => 0
    add_column :users, :net_total, :integer, :default => 0
  end
end
