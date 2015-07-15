class CreateFood < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.column :calories, :integer
      t.column :name, :string
      t.column :user_id, :integer

      t.timestamps
    end
  end
end
