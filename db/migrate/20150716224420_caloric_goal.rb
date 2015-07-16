class CaloricGoal < ActiveRecord::Migration
  def change
    add_column :users, :caloric_goal, :integer, :default => 0
  end
end
