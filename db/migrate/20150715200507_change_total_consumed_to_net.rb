class ChangeTotalConsumedToNet < ActiveRecord::Migration
  def change
    remove_column :users, :total_consumed
    add_column :users, :net_total, :integer
  end
end
