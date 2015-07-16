class CreateWaters < ActiveRecord::Migration
  def change
    create_table :waters do |t|
    	t.integer "goal"
    	t.string "measurement_type"
    	t.integer "amount_drunk"

    	t.timestamps
    end
  end
end
