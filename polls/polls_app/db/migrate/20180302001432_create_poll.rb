class CreatePoll < ActiveRecord::Migration[5.1]
  def change
    create_table :polls do |t|
      t.string :title, nil: false
      t.integer :user_id, nil: false 
    end
  end
end
