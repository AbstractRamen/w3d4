class CreateQuestion < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.integer :poll_id
      t.string :text, nil: false 
    end
  end
end
