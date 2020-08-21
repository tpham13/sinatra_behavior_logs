class CreateBehaviorLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :behavior_logs do |t|
      t.string :child_name
      t.integer :child_age
      t.string :behavior_description
      t.string :caregiver_response
      t.integer :user_id
      t.timestamps
    end 
  end
end
